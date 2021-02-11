/**
 *
 * @param {*} sequelize
 * @param {*} DataTypes
 * Se define el modelo pais con la estructura que posee en la  base de datos
 */
module.exports = function (sequelize, DataTypes) {
  return sequelize.define(
    "clienteAuto",
    {
      id: {
        type: DataTypes.STRING(255),
        allowNull: false,
        primaryKey: true,
      },
      idCliente: {
        type: DataTypes.STRING(255),
        allowNull: false,
      },
      idAuto: {
        type: DataTypes.STRING(255),
      },
      color: {
        type: DataTypes.STRING(255),
      },
      createdUsu: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      updatedUsu: {
        type: DataTypes.STRING(255),
        allowNull: true,
      },
      createdAt: {
        type: DataTypes.TIME,
        allowNull: false,
      },
      updatedAt: {
        type: DataTypes.TIME,
        allowNull: false,
      },
    },
    {
      tableName: "clienteAuto",
    }
  );
};
