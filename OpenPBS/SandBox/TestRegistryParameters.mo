within OpenPBS.SandBox;
model TestRegistryParameters
  extends Manouvres.LowSpeedCurve(
                            final paramSet=
    OpenPBS.Parameters.Functions.ModelParametersFromSpecification(
      nu=2,
      na=3,
      specification={
      tractorParam,
      semitrailerParam}), vehicle(paramSet=paramSet),
    nu=2,
    na=3);
  parameter Parameters.Vehicles.FromRegistry.SLX394 tractorParam
    annotation (Placement(transformation(extent={{-138,64},{-118,84}})));
  parameter Parameters.Vehicles.FromRegistry.CNC134 semitrailerParam
    annotation (Placement(transformation(extent={{-138,42},{-118,62}})));
end TestRegistryParameters;
