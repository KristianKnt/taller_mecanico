
<?php include '../layout/header.php';


?>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="../layout/plugins/datatables/dataTables.bootstrap.css">
    <link rel="stylesheet" href="../layout/dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="../layout/plugins/select2/select2.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="../layout/dist/css/skins/_all-skins.min.css">
  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <?php include '../layout/main_sidebar.php';?>

        <!-- top navigation -->
       <?php include '../layout/top_nav.php';?>      <!-- /top navigation -->
       <style>
label{

color: black;
}
li {
  color: white;
}
ul {
  color: white;
}
#buscar{
  text-align: right;
}
       </style>

        <!-- page content -->
        <div class="right_col" role="main">
      <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class = "x-panel">

            </div>

        </div><!--end of modal-dialog-->
 </div>
 

                 <div class="panel-heading">


        </div>
 
 <!--end of modal-->


                  <div class="box-header">
                  <h3 class="box-title"> </h3>

                </div><!-- /.box-header -->
                 <a class = "btn btn-success btn-print" href = "" onclick = "window.print()"><i class ="glyphicon glyphicon-print"></i> Impresión</a>
                <a class="btn btn-warning btn-print" href="reparacion_agregar.php"    style="height:25%; width:15%; font-size: 12px " role="button">REGISTRAR REPARACION</a>


                









                <div class="box-body">
                
         

 
                        
            

          
      






      
 <!--end of modal-->











                  <div class="box-header">
                  <h3 class="box-title"> LISTA REPARACIONES EN CURSO</h3>
                </div><!-- /.box-header -->
              


                <div class="box-body">
                
                  <table id="example2" class="table table-bordered table-striped">
                    <thead>
                        <tr class=" btn-success">

                    <th>#</th>
               
                        <th>Vehiculo</th>
                    <th>Placa</th>
                       
         
                           
        <th>Fecha estimada</th>
    <th>Cliente</th>
 <th class="btn-print"> Accion </th>
                      </tr>
                    </thead>
                    <tbody>
<?php

$auto="";

   // $branch=$_SESSION['branch'];
    $query=mysqli_query($con,"select * from reparacion r inner join marca m on m.id_marca = r.id_marca inner join modelo md on md.id_modelo = r.id_modelo inner join clientes c on c.id_cliente = r.cliente
 where r.estado_reparacion='reparado'")or die(mysqli_error());
    $i=0;
    
    while($row=mysqli_fetch_array($query)){
$auto=$row['nombre_marca'].'  '.$row['nombre_modelo'];
$codigo_registro=$row['codigo_registro'];
$id_reparacion=$row['id_reparacion'];
$tipo_comprobante=$row['tipo_comprobante'];

    $i++;
?>
                      <tr >

<td ><?php echo $i;?></td>

<td><?php echo $auto;?></td>

    

        <td><?php echo $row['placa'];?></td>              
         <td><?php echo $row['fecha_estimada'];?></td>     
           <td><?php echo $row['nombre'];?></td>                                      

                          <td>
                                 <?php
                   
if ($tipo_comprobante=="Boleta") {



                    
                      ?>


<a class="btn btn-danger btn-print" href="<?php  echo "../boletas_ventas/generar_boleta.php?id_reparacion=$id_reparacion";?>"  target="_blank"  role="button">Boleta</a>


      <?php
                      }
                      ?>

                                                       <?php


  if ($tipo_comprobante=="Factura") {

                    
                      ?>

<a class="btn btn-danger btn-print" href="<?php  echo "../boletas_ventas/generar_factura.php?id_reparacion=$id_reparacion";?>"  target="_blank"  role="button">Factura</a>

      <?php
                      }
                      ?>


                                                       <?php
                   
if ($tipo_comprobante=="Ticket") {

                      ?>


                      <a class="btn btn-danger btn-print" href="<?php  echo "../boletas_ventas/generar_ticket.php?id_reparacion=$id_reparacion";?>"  target="_blank"  role="button">Ticket</a>
            
                               <?php
                      }
                      ?>

            </td>
                      </tr>

 <!--end of modal-->

<?php }?>
                    </tbody>

                  </table>
                </div><!-- /.box-body -->

            </div><!-- /.col -->


          </div><!-- /.row -->




                </div><!-- /.box-body -->

            </div>
        </div>
      </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
       
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

  <?php include '../layout/datatable_script.php';?>



        <script>
        $(document).ready( function() {
                $('#example2').dataTable( {
                 "language": {
                   "paginate": {
                      "previous": "anterior",
                      "next": "posterior"
                    },
                    "search": "Buscar:",


                  },
           "lengthMenu": [[10, 25, 50, -1], [10, 25, 50, "All"]],


  "searching": true,
                }

              );
              } );
    </script>




    <!-- /gauge.js -->
  </body>
</html>
