<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../../dist/includes/dbcon.php');






    mysqli_query($con,"delete from detalles_pedido ")or die(mysqli_error());
    mysqli_query($con,"delete from marca ")or die(mysqli_error());
       mysqli_query($con,"delete from modelo ")or die(mysqli_error());
       mysqli_query($con,"delete from producto ")or die(mysqli_error());
              mysqli_query($con,"delete from producto ")or die(mysqli_error());
              mysqli_query($con,"delete from caja ")or die(mysqli_error());
            mysqli_query($con,"delete from clientes ")or die(mysqli_error());

  echo "<script>document.location='../layout/inicio.php'</script>";  
  
  
?>