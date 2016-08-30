within OpenPBS.Parameters.Base;
record VehicleModel "Base vehicle model parameter set"
  extends Modelica.Icons.Record;
  parameter Integer nu=2 "Number of units";
  parameter Integer na=3 "Max number of axles per unit";

  parameter Modelica.SIunits.Position[nu,na] L=[1,1,1;1,1,1]
    "All axle longitudinal positions rearward from first axle of each unit";
  parameter Modelica.SIunits.Length[nu,na] w=[1,1,1;1,1,1]
    "Track width per axle";
  parameter Modelica.SIunits.Position[nu] X={-1,-1}
    "C.g. longitudinal position relative first axle";
  parameter Modelica.SIunits.Position[nu] cgh={1,1}
    "C.g. height over ground";
  parameter Modelica.SIunits.Position[nu] A={1,1}
    "Front coupling position relative first axle";
  parameter Modelica.SIunits.Length[nu] B={-2,-2}
    "Rear coupling position relative first axle";

  parameter Boolean[nu,na] driven=[false,true,false;false,false,false]
    "True for each driven axle";

  parameter Real[nu,na] Cc=5.5*[1,1,1;1,1,1]
    "Cornering coefficient per axle";

  parameter Modelica.SIunits.Mass[nu] m={10000,10000} "Masses";
  parameter Modelica.SIunits.Inertia[nu] I={10000,10000} "Inertias";

  parameter Integer[nu,na] axlegroups=[1,2,2;1,1,1];

// Ber�knade indata
// Axel/boggitryck i kopplad kombination - Ber�knas i simulering, VerticalForces
// Kopplingstryck - Ber�knas i simulering, VerticalForces
// Tyngdpunktsh�jd - cgh
// Resulterande tyngdpunktsh�jd - ?
// Sp�rvidd - w
// Resulterande sp�rvidd - ?
// Kopplingsavst�nd EU till fr�mre koppling
// Kopplingsavst�nd EU till bakre koppling
// Tr�ghetsmoment - I (yaw)
// Tyngdpunktsposition rel. axel 1 - X
// Fr�mre kopplingsposition rel. axel 1 - A
// Bakre kopplingsposition rel.axel 1 - B
// Axelposition rel. axel 1 - L
// Modifieringsfaktor

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
        coordinateSystem(preserveAspectRatio=false)),
    Documentation(info="<html>

</html>"));
end VehicleModel;
