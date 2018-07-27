@extends('layouts.default')
@section('contenido')
<section class="content-header">
      <h1>
        Sistema De Gestión De Documentos
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa"></i> Modulo</a></li>
        <li class="active">Gestión de Usuarios</li>
      </ol>
    </section>
 <section class="content">

            
            <!-- /.box-header -->
        <div class="box">
            <div class="box-header">
              <h3 class="box-title">Usuarios</h3>
          <div class="box-footer clearfix">
           
            <div class="box-footer col-xs-12 ">
                    
                    <a id="id_buscar_usuario" href="" class="btn btn-sm btn-success btn-flat pull-right">Buscar</a> 
                    <a href="{{route('CrearUsuarios')}}" class="btn btn-sm btn-info btn-flat pull-right">Crear</a>
                </div>  

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
                        <a   title="Editar" class="btn btn-warning" href="{{url('usuarios/modificar/'.$item->id)}}"><i class="fa fa-pencil"></i></a>
                        @if($item->id_perfil!=1)
                        <a title="Eliminar Usuario" class="btn btn-danger" href="{{url('usuarios/eliminar/'.$item->id)}}"><i class="fa fa-trash-o" ></i></a>
                        @endif
                        <a  title="Ver" class="btn btn-info" href="{{ route('UsuariosShow',['id'=>$item->id])}}"><i class="fa fa-fw fa-eye" ></i></a>
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

<!--Ventanas Modal-->
<div aria-hidden="true"  tabindex="-1" aria-labelledby="myModalLabel" id="myModal_Buscar" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header box-primary">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Buscar Usuarios</h4>
            </div>
            <div class="modal-body" >
            <form role="form">
                <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
               <div class="form-group">
                  <div class="form-group col-sm-12" >
        
                                <label for="telefono">Cédula</label>
                                <input type="text" class="form-control" id="cedula-b" name="cedula-b" placeholder="Para" required>
                  
                      
                </div>
                <div class="form-group col-sm-12" >
                       <label for="telefono">Departamento</label>
                                <input type="text" class="form-control" id="cedula-b" name="cedula-b" placeholder="Para" required>
                          
                </div> 
                <div class="form-group col-sm-12" >
                       <label for="telefono">Departamento</label>
                                <input type="text" class="form-control" id="cedula-b" name="cedula-b" placeholder="Para" required>
                          
                </div> 
                 <div class="form-group col-sm-12" >
                       <label for="telefono">Rol</label>
                                <input type="text" class="form-control" id="cedula-b" name="cedula-b" placeholder="Para" required>
                          
                </div> 

            </div>
            <div class="modal-footer">
                <div class="box-footer col-xs-12 ">
                    <button  type="button"  class="btn btn-info" aling="center" id="id_buscar_usuario_modal" onclick=""> Buscar</button>
                    <button  type="button"  class="btn btn-danger" aling="center" id="" onclick=""> Cerrar</button>
                </div>
            </div>
            </form>
        </div>
    </div>
</div>

@endsection

@section('script')
<script src="{{ asset('js/Usuario.js') }}"></script>
@endsection
