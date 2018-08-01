@extends('layouts.default')
@section('contenido')

    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
       
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Inicio</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>
@if( Auth::user()->id_perfil==2 || Auth::user()->id_perfil==10 ||  Auth::user()->id_perfil==3)

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
     <br>   <br>   <br>   <br>   <br>
      <div class="row">
        


                <div class="col-md-4">
          <div class="box box-warning collapsed-box box-solid">
            <div class="box-header with-border"><i class="fa fa fa-files-o"></i
              <h3 class="box-title">Oficios</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>

            <!-- /.box-header -->
            <div class="box-body" style="display: none;">
         
                  <ul>
            <a href="general.html"><i class="fa  fa-calendar-o"></i>&nbsp   POA</a><br>
            <a href="icons.html"><i class="fa fa- fa-file-text-o"></i>&nbsp     Memoria y Cuentas</a><br>
            <a class="menu_documento" valor=3 href="buttons.html"><i class="fa  fa-file-text-o"></i>&nbsp   Contratación </a><br>
            <a href="sliders.html"><i class="fa  fa-file-text-o"></i>&nbsp   Petición de Materia</a><br>
            <a href="timeline.html"><i class="fa  fa-file-text-o"></i>&nbsp  Carta de excepción</a><br>
            <a href="modals.html"><i class="fa  fa-file-text-o"></i>&nbsp    Postulacion de jurado</a><br>
            <a href="modals.html"><i class="fa  fa-file-text-o"></i>&nbsp    Asignación de Jurado</a><br>
            <a href="modals.html"><i class="fa  fa-file-text-o"></i>&nbsp    Actas</a><br>
            <a href="modals.html"><i class="fa  fa-file-text-o"></i>&nbsp    Carga Académica de Profesores</a><br>
            <a href="modals.html"><i class="fa fa-calendar-o"></i>&nbsp    Planificación Académica Semestral</a>
          </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>



        <div class="col-md-4">
          <div class="box box-success collapsed-box box-solid">
            <div class="box-header with-border"><i class="fa fa fa-files-o"></i
              <h3 class="box-title">Solicitudes</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: none;">
         
                  <ul>
            <a href="general.html"><i class="fa fa-shopping-cart"></i>&nbsp   Compras</a><br>
            <a href="icons.html"><i class="fa  fa-tty"></i>&nbsp     Servicios</a><br>
            <a href="buttons.html"><i class="fa  fa-pencil-square-o"></i>&nbsp   Preparaduria </a><br>
            <a href="sliders.html"><i class="fa  fa-plane"></i>&nbsp   Viáticos</a><br>
            <a href="timeline.html"><i class="fa fa-list-alt"></i>&nbsp  Requisición de materiales</a><br>
            <a href="modals.html"><i class="fa fa-hdd-o"></i>&nbsp    Caja Chica</a><br>
            <a href="modals.html"><i class="fa fa-sticky-note-o"></i>&nbsp    Orden de Pago</a><br>
            <a href="modals.html"><i class="fa fa-drivers-license"></i>&nbsp    Autorización de Permisos y Licencias</a><br>
           
          </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      



      <div class="col-md-4">
          <div class="box box-default collapsed-box box-solid">
            <div class="box-header with-border"><i class="fa fa fa-files-o"></i
              <h3 class="box-title">Otras comunicaciones</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-plus"></i>
                </button>
              </div>
              <!-- /.box-tools -->
            </div>
            <!-- /.box-header -->
            <div class="box-body" style="display: none;">
         
                  <ul>
            <a href="http://localhost/gd/public/create_documento/2"><i class="fa  fa-file-text-o"></i>&nbsp   Convocatorias</a><br>
            <a class="menu_documento" valor=1 href="http://localhost/gd/public/create_documento/1"><i class="fa  fa-file-text-o"></i>&nbsp     Circulares</a><br>
            <a href="buttons.html"><i class="fa  fa-file-text-o"></i>&nbsp    Invitación </a><br>
            <a href="sliders.html"><i class="fa  fa-file-text-o"></i>&nbsp   Publicación</a>
          </ul>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        
        <!-- /.col -->
      </div>


 
        
        <!-- /.col -->
      
        
        <!-- /.col -->
      </div>
        



                        


      
     
    </section>
  @endif
@endsection
