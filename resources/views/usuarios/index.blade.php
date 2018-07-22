@extends('layouts.default')
@section('contenido')
<section class="content-header">
      <h1>
        Sistema De Gestión De Documentos
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-user"></i> Modulo</a></li>
        <li class="active">Gestión de Usuarios</li>
      </ol>
    </section>
 <section class="content">

            
            <!-- /.box-header -->
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Usuarios Registrados</h3>
              <div class="box-footer clearfix">
              <a href="{{route('CrearUsuarios')}}" class="btn btn-sm btn-info btn-flat pull-right">Agregar Usuario</a>
            </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
             @if(count($data)>0)
              <table id="example1" class="table table-bordered table-striped">
             
                  <thead>
                <tr>
                  <th>Nombre de Usuario</th>
                  <th>Email</th>
                  <th>Rol</th>
  <!--<th>Sexo</th>-->
                  <th>Dependencia</th>
                  <th>Ocupacion</th>
                  <th>Accione(s)</th>
                </tr>
                </thead>
                <tbody>
                 @foreach($data as $item)    
                <tr>
                  <td>{{$item->name}}</td>
                  <td>{{$item->email}}</td>
                  <td>{{$item->nombre_perfil}}</td>
                 <!-- <td>{{$item->sexo}}</td>-->
                  <td>{{$item->nombre_dependencia}}</td>
                  <td>{{$item->ocupacion}}</td>
                  <td>
                        <a class="btn btn-warning" href="{{url('usuarios/modificar/'.$item->id)}}"><i class="fa fa-pencil"></i></a>
                        @if($item->id_perfil!=1)
                        <a class="btn btn-danger" href="{{url('usuarios/eliminar/'.$item->id)}}"><i class="fa fa-trash-o"></i></a>
                        @endif
                        <a class="btn btn-info" href="{{ route('UsuariosShow',['id'=>$item->id])}}"><i class="fa fa-fw fa-eye"></i></a>
                  </td> 
                </tr>
                    @endforeach
                       @endif
                </tbody>
                <tfoot>
              <!--  <tr>
                  <th>Nombre de Usuario</th>
                  <th>Email</th>
                  <th>rol</th>
                  <th>Sexo</th>
                  <th>Ocupacion</th>
                  <th>Accione(s)</th>
                </tr>-->
                </tfoot>
              </table>
                     {!! $data->render() !!} 
            </div>
            <!-- /.box-body -->
          </div>
            <!-- /.box-body -->
            
           
   </section>
@endsection
