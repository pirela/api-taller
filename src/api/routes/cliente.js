import express from "express";

import {
  deleteCliente,
  getClienteById,
  getClienteLimit,
  postCliente,
  putCliente,
} from "./cliente/index";

const clienteRoutes = express.Router();

clienteRoutes.post("/", postCliente());
clienteRoutes.get("/all/:cantidad", getClienteLimit());
clienteRoutes.get("/:id", getClienteById());
clienteRoutes.put("/", putCliente());
clienteRoutes.delete("/:id", deleteCliente());

export default clienteRoutes;
