<?php

/* hecgo para webhosting
$host = 'node82985-env-1641810.whelastic.ne';
$dbuser = 'root';
$dbpass = 'ZCTixg17914';
$dbname = 'taller_mecanico';
$con = mysqli_connect($host,$dbuser,$dbpass,$dbname);
*/

//hecho para jlastic node122447-env-2831420.jelastic.saveincloud.net
$host = 'node122447-env-2831420.jelastic.saveincloud.net';
$dbuser = 'root';
$dbpass = 'GZQfet63329';
$dbname = 'taller_mecanico';
$con = mysqli_connect($host,$dbuser,$dbpass,$dbname);




// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }





try{
	$base_de_datos = new PDO('mysql:host=localhost;dbname=' . $dbname, $dbuser, $dbpass);
	 $base_de_datos->query("set names utf8;");
    $base_de_datos->setAttribute(PDO::ATTR_EMULATE_PREPARES, FALSE);
    $base_de_datos->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $base_de_datos->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_OBJ);
}catch(Exception $e){
	echo "Ocurrió algo con la base de datos: " . $e->getMessage();
}
?>