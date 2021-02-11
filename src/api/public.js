import express from "express";

import clienteRoutes from "./routes/cliente";
import autoRoutes from "./routes/auto";
import reparacionRoutes from "./routes/reparacion";
import clienteAutoRoutes from "./routes/clienteAuto";

const publicRoutes = express.Router();

publicRoutes.use("/cliente", clienteRoutes);
publicRoutes.use("/auto", autoRoutes);
publicRoutes.use("/reparacion", reparacionRoutes);
publicRoutes.use("/cliente-auto", clienteAutoRoutes);

publicRoutes.get("/", (req, res) => {
  res.send("Test express and sequelize");
});

export default publicRoutes;
