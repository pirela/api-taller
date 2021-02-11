import express from "express";

import { logger, excludeDef } from "../utils";

import db from "../models";

const Sequelize = require("sequelize");
const Op = Sequelize.Op;

/**
 * Declaracion de los modelos a utilizar
 */
const Model = db.cliente;

/**
 * Declaracion de las rutas
 */

const apiRoutes = express.Router();

apiRoutes.get("/", (req, res) => {
  res.status(200).json({
    data: {
      title: "API ROOT",
      message:
        "this is the root of the API you need to login to access the API!",
    },
  });
});

/**
 *En caso de no encontrar la ruta retornamos un 404 diciendo Oooops! 404
 *en caso contrario continuamos con la ejecucion
 */
apiRoutes.use((req, res, next) => {
  if (!req.route) {
    return res.status(404).json({
      error: "Oooops! 404",
    });
  }
  next();
});

export default apiRoutes;
