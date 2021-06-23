const Sequelize = require('sequelize');

require('dotenv').config();

// create connection to our db
const sequelize = process.env.RDS_DB_NAME
  ? new Sequelize(
      process.env.RDS_DB_NAME,
      process.env.RDS_USERNAME,
      process.env.RDS_PASSWORD,
      {
        host: process.env.RDS_HOSTNAME,
        dialect: 'mysql',
        port: process.env.RDS_PORT,
      }
    )
// if the RDS instance does not exist, connect to the local server
  : new Sequelize(process.env.DB_NAME, process.env.DB_USER, process.env.DB_PW, {
    host: process.env.DB_HOST,
    dialect: 'mysql',
    port: process.env.DB_PORT
  });

module.exports = sequelize;
