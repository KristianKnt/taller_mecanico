<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../../dist/includes/dbcon.php');


          if(isset($_REQUEST['id_detalles']))
            {
              $id_detalles=$_REQUEST['id_detalles'];
            }
            else
            {
            $id_detalles=$_POST['id_detalles'];
          }





  mysqli_query($con,"delete from detalles_pedido where id_detalles= '$id_detalles'")or die(mysqli_error());
  
  echo "<script type='text/javascript'>alert('Eliminado correctamente!');</script>";
  echo "<script>document.location='../reparacion/reparacion.php'</script>"; 
  
?>