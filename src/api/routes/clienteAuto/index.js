import db from "../../../models";
import { logger, defValues } from "../../../utils";

const Model = db.clienteAuto;
const ModelCliente = db.cliente;
const ModelAuto = db.auto;

export const postClienteAuto = () => async (req, res) => {
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
      throw new Error("No se creo el clienteAuto");
    }
  } catch (error) {
    logger.error(error.message);
    res.status(500).json({ error: error.message });
  }
};

export const getClienteAutoLimit = () => async (req, res) => {
  try {
    const cantidad = Number.parseInt(req.params.cantidad);
    let objs = await Model.findAll({
      order: [["createdAt", "ASC"]],
      //attributes: ["id", "identificacion", "nombre", "apellido", "email"],
      offset: cantidad,
      limit: 5,
    });
    if (objs) {
      res.status(200).json({ data: objs });
    } else {
      throw new Error("No se encontraron los clienteAuto");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const getClienteAutoById = () => async (req, res) => {
  try {
    const id = req.params.id;
    const obj = await Model.findOne({
      where: {
        id: id,
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
      ],
    });
    if (obj) {
      res.status(200).json({ data: obj });
    } else {
      throw new Error("No se encontro el clienteAuto");
    }
  } catch (e) {
    logger.error(e.message);
    res.status(500).json({ error: e.message });
  }
};

export const putClienteAuto = () => async (req, res) => {
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
      throw new Error("No se modifico el clienteAuto especificada");
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteClienteAuto = () => async (req, res) => {
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
