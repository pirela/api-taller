import express from "express";

import {
  deleteClienteAuto,
  getClienteAutoById,
  getClienteAutoLimit,
  postClienteAuto,
  putClienteAuto,
} from "./clienteAuto/index";

const clienteAutoRoutes = express.Router();

clienteAutoRoutes.post("/", postClienteAuto());
clienteAutoRoutes.get("/all/:cantidad", getClienteAutoLimit());
clienteAutoRoutes.get("/:id", getClienteAutoById());
clienteAutoRoutes.put("/", putClienteAuto());
clienteAutoRoutes.delete("/:id", deleteClienteAuto());

export default clienteAutoRoutes;
