import db from "../../../models";
import { logger, defValues, excludeDef } from "../../../utils";

const Model = db.auto;

export const postAuto = () => async (req, res) => {
  const data = req.body;
  const def = defValues();
  const values = {
    ...data,
    ...def,
  };
  try {
    let data = await Model.create(values);
    if (data) {
      res.status(200).json({ data: data });
    } else {
      throw new Error("No se creo el auto");
    }
  } catch (error) {
    logger.error(error.message);
    res.status(500).json({ error: error.message });
  }
};

export const getAutoLimit = () => async (req, res) => {
  try {
    const cantidad = Number.parseInt(req.params.cantidad);
    let objs = await Model.findAll({
      order: [["createdAt", "ASC"]],
      attributes: {
        exclude: [...excludeDef()],
      },
      offset: cantidad,
      limit: 5,
    });
    if (objs) {
      res.status(200).json({ data: objs });
    } else {
      throw new Error("No se encontraron los autos");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const getAutoById = () => async (req, res) => {
  try {
    const id = req.params.id;
    const obj = await Model.findOne({
      where: {
        id: id,
      },
      attributes: {
        exclude: ["createdAt", "updatedAt", "createdUsu", "updatedUsu"],
      },
    });
    if (obj) {
      res.status(200).json({ data: obj });
    } else {
      throw new Error("No se encontro el auto");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const putAuto = () => async (req, res) => {
  const data = req.body;
  const values = Object.assign({}, data);
  try {
    const upd = await Model.update(values, {
      where: {
        id: data.id,
      },
    });
    if (upd) {
      res.status(200).json({ data: upd });
    } else {
      throw new Error("No se modifico el auto especificada");
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteAuto = () => async (req, res) => {
  const idUser = req.params.id;
  try {
    await Model.destroy({
      where: {
        id: idUser,
      },
    });
    res.status(200).json({ data: true });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
