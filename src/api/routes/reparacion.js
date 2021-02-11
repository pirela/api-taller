import express from "express";

import {
  deleteReparacion,
  getReparacionById,
  getReparacionByIdAuto,
  getReparacionLimit,
  getReparacionOrder,
  postReparacion,
  putReparacion,
} from "./reparacion/index";

const reparacionRoutes = express.Router();

reparacionRoutes.post("/", postReparacion());
reparacionRoutes.get("/all/:cantidad", getReparacionLimit());
reparacionRoutes.get("/ordenadas", getReparacionOrder());
reparacionRoutes.get("/auto/:id", getReparacionByIdAuto());
reparacionRoutes.get("/:id", getReparacionById());
reparacionRoutes.put("/", putReparacion());
reparacionRoutes.delete("/:id", deleteReparacion());

export default reparacionRoutes;
