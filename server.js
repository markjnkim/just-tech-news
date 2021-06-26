const path = require('path');
const express = require('express');
const session = require('express-session');
const exphbs = require('express-handlebars');
const XRay = require('aws-xray-sdk');

XRay.config([XRay.plugins.ElasticBeanstalkPlugin]);
XRay.middleware.setSamplingRules('sampling-rules.json');

const app = express();
const PORT = process.env.PORT || 3000;

const sequelize = require('./config/connection');
const SequelizeStore = require('connect-session-sequelize')(session.Store);

const sess = {
  secret: 'Super secret secret',
  cookie: {},
  resave: false,
  saveUninitialized: true,
  store: new SequelizeStore({
    db: sequelize,
  }),
};

app.use(session(sess));

const helpers = require('./utils/helpers');

const hbs = exphbs.create({ helpers });

app.engine('handlebars', hbs.engine);
app.set('view engine', 'handlebars');

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(express.static(path.join(__dirname, 'public')));

app.use(XRay.express.openSegment('blog-routes'));
app.use(require('./controllers/'));
app.use(XRay.express.closeSegment());

sequelize.sync({ force: false }).then(() => {
  app.listen(PORT, () => console.log('Now listening'));
});
