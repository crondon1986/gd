<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Sistema de Gestión de Documentos | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="{{ asset('/bower_components/bootstrap/dist/css/bootstrap.min.css')}}">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('/bower_components/font-awesome/css/font-awesome.min.css')}}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="{{ asset('/bower_components/Ionicons/css/ionicons.min.css')}}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('/dist/css/AdminLTE.min.css')}}">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="{{ asset('/dist/css/skins/_all-skins.min.css')}}">
  <!-- Morris chart -->
  <link rel="stylesheet" href="{{ asset('/bower_components/morris.js/morris.css')}}">
  <!-- jvectormap -->
  <link rel="stylesheet" href="{{ asset('/bower_components/jvectormap/jquery-jvectormap.css')}}">
  <!-- Date Picker -->
  <link rel="stylesheet" href="{{ asset('/bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css')}}">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="{{ asset('/bower_components/bootstrap-daterangepicker/daterangepicker.css')}}">
  <!-- bootstrap wysihtml5 - text editor -->
  <link rel="stylesheet" href="{{ asset('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css')}}">
    <link rel="stylesheet" href="{{ asset('plugins/timepicker/bootstrap-timepicker.min.css')}}">
    <link rel="stylesheet" type="text/css" href="{{ asset('/css/style.css') }}" />
<!--<link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />-->

<link rel="stylesheet" href="{{ asset('dist/select2/select2.css')}}">

        

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <!-- Logo -->
    <a href="index2.html" class="logo">
    
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>U</b>DO</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Documentos</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top">
      <!-- Sidebar toggle button-->
      <a href="{{ url('/') }}" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <!-- Messages: style can be found in dropdown.less-->
         
       
          <!-- User Account: style can be found in dropdown.less -->
          <li class="dropdown user user-menu">
            <a href="" class="dropdown-toggle" data-toggle="dropdown">
              <img src="{{ url('file/foto/'.Auth::user()->avatar) }}" class="user-image" alt="User Image">
              <span class="hidden-xs">{{ Auth::user()->nombres.'  '.Auth::user()->apellidos }}</span>
              
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="{{ url('file/foto/'.Auth::user()->avatar) }}" class="img-circle" alt="User Image">
                <p>
                  
                </p>
                <p>


                @if(Auth::user()->id_dependencia==2 || Auth::user()->id_dependencia==14 || Auth::user()->id_dependencia==20) 
                    @if( Auth::user()->id_perfil==6   )
                        Jefe De Escuela
                        <br>
                        Escuela de Ciencias
                           @endif 
                  @if( Auth::user()->id_perfil==5   )
                        Estudiante <br>

                        Licenciatura en Informática
                           @endif 
                  @if( Auth::user()->id_perfil==4   )
                        Profesor
                        
                           @endif 
                  @if( Auth::user()->id_perfil==3   )
                       Secretaría <br>
                       Departameto de Informática
                          @endif 
                  @if( Auth::user()->id_perfil==2  )
                     Jefe <br>
                     Departameto de Informática
                           @endif 
                  @if( Auth::user()->id_perfil==1   )
                       Administrador
                  
                      @endif   
                  @if( Auth::user()->id_perfil==7   )
                       Jefe de Comisión <br>
                  Departameto de Informática

                      @endif 
                @endif



                 
                 
                </p>
              </li>
              <!-- Menu Body -->
              
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-left">
                  <a href="{{ url('profile/') }}" class="btn btn-default btn-flat">Perfil</a>
                </div>
                <div class="pull-right">
                     <a href="{{ url('/logout')  }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();" class="btn btn-default btn-flat">
                                         Cerrar Sesion
                                        </a>

                                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                  
                </div>
              </li>
            </ul>
          </li>
          <!-- Control Sidebar Toggle Button -->
          
        </ul>
      </div>
    </nav>
         <input type="hidden" id="url_base" value="{{ url('') }}">
  </header>
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="{{ url('file/foto/'.Auth::user()->avatar) }}" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>   {{  Auth::user()->nombres .'  '.Auth::user()->apellidos}}</p>
       
          <a href="{{ url('/') }}"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <ul class="sidebar-menu" data-widget="tree">

       @if(Auth::user()->id_perfil===2 ||  Auth::user()->id_perfil==3 )
        <!--usuario secretaria -->
        <li>
          <a href="{{route('Home')}}">
            <i class="fa fa-home"></i> <span>Inicio</span>
          </a>
        </li>
       @endif 
       
        @if(Auth::user()->id_perfil===1)
        <li>
          <a href="{{route('Usuarios')}}">
            <i class="fa fa-user"></i> <span>Gestión de Usuarios</span>
          </a>
        </li>
       @endif 

         @if(Auth::user()->id_dependencia==2 || Auth::user()->id_dependencia==14 || Auth::user()->id_dependencia==20)
       @if(Auth::user()->id_perfil==2 || Auth::user()->id_perfil==10||  Auth::user()->id_perfil==3 ||  Auth::user()->id_perfil==4 ||  Auth::user()->id_perfil==6 ||  Auth::user()->id_perfil==7)
     
       <li>
          <a href="{{ route('Documentos') }}">
            <i class="fa fa-files-o"></i> <span>Gestión de Documentos</span>
          </a>
        </li> 
         @endif 
         @if(Auth::user()->id_perfil==7 || Auth::user()->id_perfil==5)
     
       <li>
          <a href="{{url('preparaduriaconcurso/index')}}">
            <i class="fa fa-files-o"></i> <span>Concurso Preparador Docente</span>
          </a>
        </li> 
        @endif 
       @if(Auth::user()->id_perfil==2 || Auth::user()->id_perfil==10 ||  Auth::user()->id_perfil==3)
       <li>
          <a href="{{url('ubicacion/index')}}">
            <i class="fa fa-map-marker"></i> <span>Ubicación del Documento</span>
          </a>
        </li> 
        @endif
       @if(Auth::user()->id_perfil==2 || Auth::user()->id_perfil==10 ||  Auth::user()->id_perfil==30 || Auth::user()->id_perfil==5 ||  Auth::user()->id_perfil==6 ||  Auth::user()->id_perfil==7)
     
       <li>
          <a href="{{ route('Preparaduria') }}">
            <i class="fa fa-files-o"></i> <span>Solicitud de Preparaduría</span>
          </a>
        </li> 
         @endif 
          @if(Auth::user()->id_perfil==2 || Auth::user()->id_perfil==10 ||  Auth::user()->id_perfil==30 || Auth::user()->id_perfil==5 )
     
       <li>
          <a href="{{url('ubicacionpreparaduria/index')}}">
            <i class="fa fa-map-marker"></i> <span>Ubicación de Solicitud</span>
          </a>
        </li> 
         @endif 
      @if(Auth::user()->id_perfil==7 )
     
       <li>
          <a href="{{url('horario/index')}}">
            <i class="fa fa-calendar"></i> <span>Asingar Horarios</span>
          </a>
        </li> 
         @endif 
         @else
         <li>
          <a href="{{ route('Documentos') }}">
            <i class="fa fa-files-o"></i> <span>Gestión de Documentos</span>
          </a>
        </li> 

        @endif 


         <!--  <li class="treeview menu-open">
          <a href="#">
            <i class="fa fa-edit"></i> <span>Gestión de Documentos</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href=""><i class="fa fa-edit"></i>Crear</a></li>
            <li><a href="{{ route('DocumentosEnviados') }}"><i class="fa fa-circle-"></i>Recibidos</a></li>
            <li><a href=""><i class="fa fa-circle-o"></i>Enviados</a></li>
            <li><a href="{{ route('Documentos') }}"><i class="fa fa-circle-o"></i>Por Enviar</a></li>
          </ul>
        </li>-->
            <li id="sessionKiller2"><a href="javascript:void(0);"><i class="fa fa-sign-out"></i> <span>Salir</span></a></li>

      </ul>

    </section>
    <!-- /.sidebar -->
  </aside>
 

  <div class="content-wrapper">
  <?php

//print_r();
                      ?> 
    @yield('contenido')
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b></b>
    </div>
    <strong>Copyright &copy; 2018 <a href="#">Sistema De Gestión De Documentos</a>.</strong> Todos Los Derechos Reservados, 
    Desarrollado por la empresa TenSoft en Colaboración Con el Deparatamento de Informática De La Udo Núcleo de Sucre 
  </footer>

  
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="{{ asset('/bower_components/jquery/dist/jquery.min.js')}}"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{ asset('/bower_components/jquery-ui/jquery-ui.min.js')}}"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="{{ asset('/bower_components/bootstrap/dist/js/bootstrap.min.js')}}"></script>
<!-- Morris.js charts -->
<!--<script src="{{ asset('/raphael/raphael.min.js')}}"></script>
<script src="{{ asset('/morris.js/morris.min.js')}}"></script>-->
<!-- Sparkline -->
<!--<script src="{{ asset('/jquery-sparkline/dist/jquery.sparkline.min.js')}}"></script>
 jvectormap 
<script src="{{ asset('/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js')}}"></script>
<script src="{{ asset('/plugins/jvectormap/jquery-jvectormap-world-mill-en.js')}}"></script>-->
<!-- jQuery Knob Chart -->
<!--<script src="{{ asset('/jquery-knob/dist/jquery.knob.min.js')}}"></script>-->
<!-- daterangepicker -->
<!--<script src="{{ asset('/moment/min/moment.min.js')}}"></script>-->
<script src="{{ asset('/bower_components/bootstrap-daterangepicker/daterangepicker.js')}}"></script>
<!-- datepicker -->
<script src="{{ asset('/bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')}}"></script>
<!-- Bootstrap WYSIHTML5 -->
<!--<script src="{{ asset('plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js')}}"></script>-->
<!-- Slimscroll -->
<!--<script src="{{ asset('/jquery-slimscroll/jquery.slimscroll.min.js')}}"></script>-->
<!-- FastClick -->
<!--<script src="{{ asset('/fastclick/lib/fastclick.js')}}"></script>-->
<script src="{{ asset('/plugins/timepicker/bootstrap-timepicker.min.js')}}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('/dist/js/adminlte.min.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="{{ asset('/dist/js/pages/dashboard.js')}}"></script>
<!-- AdminLTE for demo purposes -->
<script src="{{ asset('/dist/js/demo.js')}}"></script>
<script src="{{ asset('/js/jquery.form.js') }}"></script>
<script src="{{ asset('/js/jquery.uploadfile.min.js') }}"></script>
<script src="{{ asset('/dist/select2/select2.js')}}"></script>
<!--<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>-->

@yield('script')
</body>
</html>