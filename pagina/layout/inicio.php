<?php include '../layout/header.php';
?>


<?php
$id_usuario = $_SESSION['id'];



//  if ($guardar=="si") {

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
      <?php include '../layout/main_sidebar.php'; ?>

      <!-- top navigation -->
      <?php include '../layout/top_nav.php'; ?>
      <!-- /top navigation -->
      <style>
        label {

          color: black;
        }

        li {
          color: white;
        }

        ul {
          color: white;
        }

        #buscar {
          text-align: right;
        }
      </style>

      <?php

      if (isset($_POST['btn_temporada'])) {
        $year = $_POST['year'];


        mysqli_query($con, "update temporada set year='$year' where id='1'") or die(mysqli_error());
      }

      ?>

      <!-- page content -->
      <div class="right_col" role="main">
        <div class="row">
          <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x-panel">

            </div>

          </div>
          <!--end of modal-dialog-->
        </div>
        <!--end of modal-->
        <div class="box-body">
          <!-- Date range -->

        </div>

        <div class="box-header">
          <h3 class="box-title"> MENU</h3>
        </div><!-- /.box-header -->
        <div class="box-body">











          <div class="box-header with-border">
            <h3 class="box-title"></h3>
          </div><!-- /.box-header -->
          <div class="box-body">
            <div class="row">



















              <?php
              if ($tipo == "administrador") {

              ?>


                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-blue">
                    <div class="inner">

                      <h4>
                        <?php
                        $num = 0;
                        $select = mysqli_query($con, "SELECT * FROM usuario ") or die(mysqli_error($link));
                        $num = mysqli_num_rows($select);
                        echo $num;
                        ?>
                      </h4>
                      <p>Usuarios</p>
                    </div>
                    <div class="icon"><img height="80" width="80" src="img/comittee.png">
                      <i class=""></i>
                    </div>
                    <?php echo ($num > 0) ? '<a href="../usuario/usuario.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                  </div>
                </div>


              <?php
              }
              ?>


              <?php
              if ($tipo == "administrador") {

              ?>


                <div class="col-lg-3 col-xs-6">
                  <!-- small box -->
                  <div class="small-box bg-orange">
                    <div class="inner">

                      <h4>
                        <?php
                        $num = 1;
                        echo $num;
                        ?>
                      </h4>
                      <p>Configuracion empresa</p>
                    </div>
                    <div class="icon"><img height="80" width="80" src="img/setting.png">
                      <i class=""></i>
                    </div>
                    <?php echo ($num > 0) ? '<a href="../configuracion/configuracion.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                  </div>
                </div>


              <?php
              }
              ?>





              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                  <div class="inner">

                    <h4>
                      <?php

                      $num = 0;
                      $query = mysqli_query($con, "select * from reparacion where estado_reparacion='transito' ") or die(mysqli_error());
                      $i = 0;
                      while ($row = mysqli_fetch_array($query)) {
                        $num++;
                      }
                      echo $num;
                      ?>
                    </h4>
                    <p>Reparaciones en curso</p>
                  </div>
                  <div class="icon"><img height="80" width="80" src="img/maintenance.png">
                    <i class=""></i>
                  </div>
                  <?php echo ($num > 0) ? '<a href="../reparacion/reparacion.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                </div>
              </div>


              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-red">
                  <div class="inner">

                    <h4>
                      <?php

                      $num = 0;
                      $query = mysqli_query($con, "select * from reparacion where estado_reparacion='reparado' ") or die(mysqli_error());
                      $i = 0;
                      while ($row = mysqli_fetch_array($query)) {
                        $num++;
                      }
                      echo $num;
                      ?>
                    </h4>
                    <p>Reparaciones concluidas</p>
                  </div>
                  <div class="icon"><img height="80" width="80" src="img/mecanico.jpg">
                    <i class=""></i>
                  </div>
                  <?php echo ($num > 0) ? '<a href="../reparacion/reparacion_concluidas.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                </div>
              </div>

              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-black">
                  <div class="inner">

                    <h4>
                      <?php

                      $num = 0;
                      $query = mysqli_query($con, "select * from marca where estado='a' ") or die(mysqli_error());
                      $i = 0;
                      while ($row = mysqli_fetch_array($query)) {
                        $num++;
                      }
                      echo $num;
                      ?>
                    </h4>
                    <p>Marca vehiculo</p>
                  </div>
                  <div class="icon"><img height="80" width="80" src="img/coche.png">
                    <i class=""></i>
                  </div>
                  <?php echo ($num > 0) ? '<a href="../marca/marca.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                </div>
              </div>


              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-green">
                  <div class="inner">

                    <h4>
                      <?php

                      $num = 0;
                      $query = mysqli_query($con, "select * from producto where estado='a' ") or die(mysqli_error());
                      $i = 0;
                      while ($row = mysqli_fetch_array($query)) {
                        $num++;
                      }
                      echo $num;
                      ?>
                    </h4>
                    <p>Repuesto</p>
                  </div>
                  <div class="icon"><img height="80" width="80" src="img/garage.png">
                    <i class=""></i>
                  </div>
                  <?php echo ($num > 0) ? '<a href="../producto/producto.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                </div>
              </div>
              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-blue">
                  <div class="inner">

                    <h4>
                      <?php

                      $num = 0;
                      $query = mysqli_query($con, "select * from modelo where estado='a' ") or die(mysqli_error());
                      $i = 0;
                      while ($row = mysqli_fetch_array($query)) {
                        $num++;
                      }
                      echo $num;
                      ?>
                    </h4>
                    <p>Modelo vehiculo</p>
                  </div>
                  <div class="icon"><img height="80" width="80" src="img/coche.png">
                    <i class=""></i>
                  </div>
                  <?php echo ($num > 0) ? '<a href="../modelo/modelo.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                </div>
              </div>



              <div class="col-lg-3 col-xs-6">
                <!-- small box -->
                <div class="small-box bg-yellow">
                  <div class="inner">

                    <h4>
                      <?php

                      $num = 1;

                      echo $num;
                      ?>
                    </h4>
                    <p>Calculadora</p>
                  </div>
                  <div class="icon"><img height="80" width="80" src="img/ass.png">
                    <i class=""></i>
                  </div>
                  <?php echo ($num > 0) ? '<a href="../calculadora/calculadora.php" class="small-box-footer">Mas info<i class="fa fa-arrow-circle-right"></i></a>' : '<a href="#" class="small-box-footer">-------</a>'; ?>
                </div>
              </div>











            </div>
            <!--row-->























          </div><!-- /.col (right) -->















          <div class="box-body">
            <div class="row">







            </div>

          </div>






        </div>
        <!--row-->




      </div><!-- /.col (right) -->
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
      <a href="https://www.facebook.com/taller.delvolante/">Taller al volante</a>
    </div>
    <div class="clearfix"></div>
  </footer>
  <!-- /footer content -->
  </div>
  </div>

  <?php include '../layout/datatable_script.php'; ?>



  <script>
    $(document).ready(function() {
      $('#example2').dataTable({
          "language": {
            "paginate": {
              "previous": "anterior",
              "next": "posterior"
            },
            "search": "Buscar:",


          },

          "info": false,
          "lengthChange": false,
          "searching": false,


          "searching": true,
        }

      );
    });
  </script>


  <!-- /gauge.js -->
</body>

</html>