within OpenPBS.VehicleModels;
model LongitudinalAcceleration
  "Use max thrust force distributed on driving axles and solve for the highest inclination angle where the desired acceleration can be achieved"
  extends Longitudinal(mode=1,inclination_angle=0);

  /* Tire forces */
  Modelica.Blocks.Interfaces.RealInput Fxd
    "Drive force (applied to each driven axle)"
    annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));

//   parameter Modelica.SIunits.Acceleration acceleration_demand=0 "Required acceleration";
//   parameter Modelica.SIunits.Force max_thrust_force_vx0=20000;

initial equation
//      for i in 1:nu loop
//        for j in 1:na loop
//          if driven[i,j] then
//            Fx[i,j]=0.2*verticalForces.Fz[i,j];
//          end if;
//        end for;
//      end for;
//Fxd = max_thrust_force_vx0/sum(Modelica.Math.BooleanVectors.countTrue(driven));
equation
  //ax[1]=acceleration_demand;

  /* Tire force */
  for i in 1:nu loop
    for j in 1:na loop
      if driven[i,j] then
        Fx[i,j]=Fxd-verticalForces.Fz[i,j]*sin(inclination_angle);
      else
        Fx[i,j]=-verticalForces.Fz[i,j]*sin(inclination_angle);
      end if;
    end for;
  end for;
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)));
end LongitudinalAcceleration;
