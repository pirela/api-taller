import path from "path";
import Sequelize from "sequelize";
import debug from "debug";

const db = {};

const conf = {
  database: process.env.DB_NAME,
  username: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  host: process.env.DB_HOST,
  dialect: "mysql",
  logging: (s) => debug(s),
  operatorsAliases: false,
};

const sequelize = new Sequelize(conf);

db["auto"] = sequelize["import"](path.join(__dirname, "auto.js"));
db["cliente"] = sequelize["import"](path.join(__dirname, "cliente.js"));
db["clienteAuto"] = sequelize["import"](path.join(__dirname, "clienteAuto.js"));
db["reparaciones"] = sequelize["import"](
  path.join(__dirname, "reparaciones.js")
);
db["tipo"] = sequelize["import"](path.join(__dirname, "tipo.js"));

Object.keys(db).forEach((modelName) => {
  if (db[modelName].associate) {
    db[modelName].associate(db);
  }
});

require("../utils/associations")(db);

db.sequelize = sequelize;

module.exports = db;
