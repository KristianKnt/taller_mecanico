<?php
session_start();
include('../../dist/includes/dbcon.php');
$id_usuario=$_SESSION['id'];

	$id_marca = $_POST['id_marca'];

	$id_modelo = $_POST['id_modelo'];

	$placa = $_POST['placa'];
$codigo_registro = $_POST['codigo_registro'];
$fallas = $_POST['fallas'];
$revision_componentes = $_POST['revision_componentes'];
$fecha_estimada = $_POST['fecha_estimada'];
$hora_reparacion = $_POST['hora_reparacion'];
$cliente = $_POST['cliente'];
$precio_estimado = $_POST['precio_estimado'];
$tipo_comprobante = $_POST['tipo_comprobante'];
   $fecha_registro = date('Y-m-d');


$estado_reparacion = "transito";
//$caja=0;



//		$update=mysqli_query($con,"update usuario set caja=caja+'$monto' where id='$id_usuario' ");

		mysqli_query($con,"INSERT INTO reparacion(id_marca,id_modelo,id_usuario,placa,codigo_registro,fallas,revision_componentes,fecha_estimada,hora_reparacion,cliente,fecha_registro,precio_estimado,tipo_comprobante,estado_reparacion)
				VALUES('$id_marca','$id_modelo','$id_usuario','$placa','$codigo_registro','$fallas','$revision_componentes','$fecha_estimada','$hora_reparacion','$cliente','$fecha_registro','$precio_estimado','$tipo_comprobante','$estado_reparacion')")or die(mysqli_error($con));

			

	echo "<script>document.location='../reparacion/reparacion.php'</script>";	

?>
