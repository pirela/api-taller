module.exports = function (sequelize, DataTypes) {
  return sequelize.define(
    "reparaciones",
    {
      id: {
        type: DataTypes.STRING(255),
        allowNull: false,
        primaryKey: true,
      },
      idCliente: {
        type: DataTypes.STRING(255),
      },
      idAuto: {
        type: DataTypes.STRING(255),
      },
      reparacion: {
        type: DataTypes.STRING(255),
      },
      observacion: {
        type: DataTypes.TEXT(),
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
      tableName: "reparaciones",
    }
  );
};
