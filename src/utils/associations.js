//creacion de las relaciones entre los modelos
module.exports = function (models) {
  //asignacion de los modelos
  const cliente = models.cliente;
  const auto = models.auto;
  const clienteAuto = models.clienteAuto;
  const tipo = models.tipo;
  const reparaciones = models.reparaciones;
  /**
   * implemetacion de las relaciones
   */
  cliente.hasOne(reparaciones, {
    foreignKey: "idCliente",
  });
  reparaciones.belongsTo(cliente, {
    foreignKey: "idCliente",
  });
  auto.hasMany(reparaciones, {
    foreignKey: "idAuto",
  });
  reparaciones.belongsTo(auto, {
    foreignKey: "idAuto",
  });
  tipo.hasOne(reparaciones, {
    foreignKey: "idEstado",
  });
  reparaciones.belongsTo(tipo, {
    foreignKey: "idEstado",
  });
  cliente.hasMany(clienteAuto, {
    foreignKey: "idCliente",
  });
  clienteAuto.belongsTo(cliente, {
    foreignKey: "idCliente",
  });
  auto.hasMany(clienteAuto, {
    foreignKey: "idAuto",
  });
  clienteAuto.belongsTo(auto, {
    foreignKey: "idAuto",
  });
};
