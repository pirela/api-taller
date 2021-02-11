import express from "express";

import {
  deleteAuto,
  getAutoById,
  getAutoLimit,
  postAuto,
  putAuto,
} from "./auto/index";

const autoRoutes = express.Router();

autoRoutes.post("/", postAuto());
autoRoutes.get("/all/:cantidad", getAutoLimit());
autoRoutes.get("/:id", getAutoById());
autoRoutes.put("/", putAuto());
autoRoutes.delete("/:id", deleteAuto());

export default autoRoutes;
