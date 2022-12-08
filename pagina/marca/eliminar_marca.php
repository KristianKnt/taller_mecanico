<?php session_start();
if(empty($_SESSION['id'])):
header('Location:../index.php');
endif;

include('../../dist/includes/dbcon.php');


          if(isset($_REQUEST['id_marca']))
            {
              $id_marca=$_REQUEST['id_marca'];
            }
            else
            {
            $id_marca=$_POST['id_marca'];
          }



  mysqli_query($con,"update marca set estado='d' where id_marca='$id_marca'")or die(mysqli_error());
echo "<script>document.location='../marca/marca.php'</script>"; 
     // header('Location:../usuario.php');
?>