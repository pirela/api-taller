import db from "../../../models";
import { logger, defValues, ex } from "../../../utils";

const Model = db.reparaciones;
const ModelCliente = db.cliente;
const ModelAuto = db.auto;
const ModelTipo = db.tipo;

export const postReparacion = () => async (req, res) => {
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
      throw new Error("No se creo la reparacion");
    }
  } catch (error) {
    logger.error(error.message);
    res.status(500).json({ error: error.message });
  }
};

export const getReparacionLimit = () => async (req, res) => {
  try {
    const cantidad = Number.parseInt(req.params.cantidad);
    let objs = await Model.findAll({
      order: [["createdAt", "ASC"]],
      attributes: {
        exclude: [...defValues()],
      },
      offset: cantidad,
      limit: 5,
    });
    if (objs) {
      res.status(200).json({ data: objs });
    } else {
      throw new Error("No se encontraron las reparaciones");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const getReparacionById = () => async (req, res) => {
  try {
    const id = req.params.id;
    const obj = await Model.findOne({
      where: {
        id: id,
      },
      attributes: {
        exclude: ["createdAt", "updatedAt", "createdUsu", "updatedUsu"],
      },
      include: [
        {
          model: ModelCliente,
          attributes: ["nombre"],
        },
        {
          model: ModelAuto,
          attributes: ["marca", "modelo"],
        },
        {
          model: ModelTipo,
          attributes: ["titulo", "descripcion"],
        },
      ],
    });
    if (obj) {
      res.status(200).json({ data: obj });
    } else {
      throw new Error("No se encontro la reparacion");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const getReparacionByIdAuto = () => async (req, res) => {
  try {
    const id = req.params.id;
    const obj = await Model.findAll({
      where: {
        idAuto: id,
      },
      attributes: {
        exclude: ["createdAt", "updatedAt", "createdUsu", "updatedUsu"],
      },
      include: [
        {
          model: ModelCliente,
          attributes: ["nombre"],
        },
        {
          model: ModelAuto,
          attributes: ["marca", "modelo"],
        },
        {
          model: ModelTipo,
          attributes: ["titulo", "descripcion"],
        },
      ],
    });
    if (obj) {
      res.status(200).json({ data: obj });
    } else {
      throw new Error("No se encontro la reparacion");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const getReparacionOrder = () => async (req, res) => {
  try {
    const id = req.params.id;
    const obj = await Model.findAll({
      order: [["createdAt", "DESC"]],
      attributes: {
        exclude: ["updatedAt", "createdUsu", "updatedUsu"],
      },
      include: [
        {
          model: ModelCliente,
          attributes: ["nombre"],
        },
        {
          model: ModelAuto,
          attributes: ["marca", "modelo"],
        },
        {
          model: ModelTipo,
          attributes: ["titulo", "descripcion"],
        },
      ],
    });
    if (obj) {
      res.status(200).json({ data: obj });
    } else {
      throw new Error("No se encontro las reparacionones");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const putReparacion = () => async (req, res) => {
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
      throw new Error("No se modifico la reparacion especificada");
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteReparacion = () => async (req, res) => {
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
