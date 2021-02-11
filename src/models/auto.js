module.exports = function (sequelize, DataTypes) {
  return sequelize.define(
    "auto",
    {
      id: {
        type: DataTypes.STRING(255),
        allowNull: false,
        primaryKey: true,
      },
      marca: {
        type: DataTypes.STRING(255),
      },
      modelo: {
        type: DataTypes.STRING(255),
      },
      year: {
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
      tableName: "auto",
    }
  );
};
