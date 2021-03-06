@extends('layouts.default')
@section('contenido')
<section class="content-header">
      <h1>
        Gestión de Usuarios
        <smallCrear</small>
      </h1>
      <ol class="breadcrumb">
       <!-- <li><a href="#"><i class="fa"></i> Modulo</a></li>-->
        <li><a href="#">Gestión de Usuarios</a></li>
        <li class="active">Crear Usuario</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Datos Personales</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form">
                <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">              
                <input type="hidden" id="tipo" value="{{ env('FORMAT_IMG') }}">  
                  
              <div class="box-body">
              <div class="row"> 
                        <div class="col-sm-2">
                            <div class="form-group">
                                <label for="cedula">Cédula</label>
                                <input type="text" class="form-control" id="cedula" name="cedula" placeholder="Cedula" required>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="nombre">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre" required>
                            </div>
                        </div >
                        <div class="col-sm-5">
                            <div class="form-group">
                                <label for="apellido">Apellido</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" placeholder="Apellido" required>
                            </div>
                        </div >
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="sexo">Sexo</label>
                                <select class="form-control" name="sexo" id="sexo"> 
                                    <option>Seleccione el Sexo </option>
                                    <option value="Masculino">Masculino</option>
                                    <option value="Femenino">Femenino</option>
                                </select>
                            </div>
                        </div >
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="telefono">Teléfono</label>
                                <input type="text" class="form-control" id="telefono" name="telefono" placeholder="Telefono" required>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="email" required>
                            </div>
                        </div >
                        
                        
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="ocupacion">Nivel Académico</label>
                                <input type="text" class="form-control" id="ocupacion" name="ocupacion" placeholder="ocupacion" required>
                            </div>
                        </div >
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="ocupacion">Cargo que Ocupa</label>
                                <select type="text" class="form-control" id="ocupacion_cargo" name="ocupacion_cargo" placeholder="ocupacion" ></select>
                            </div>
                        </div >
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="sexo">Dependncia</label>
                                 {!! Form::select('id_dependencia', $Dependencia, null, ['id' => 'id_dependencia','class'=>'form-control','placeholder'=>'Seleccione Departamento ..','required']) !!}
                                    {!! $errors->first('id_dependencia', '<p class="help-block">:message</p>') !!}
                            </div>
                        </div >
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label for="sexo">Rol</label>
                                    {!! Form::select('id_perfil', $Rol, null, ['id' => 'id_perfil','class'=>'form-control','placeholder'=>'Seleccione Rol ..','required']) !!}
                                    {!! $errors->first('id_perfil', '<p class="help-block">:message</p>') !!}
                            </div>
                        </div >
                        <div class="col-sm-6">
                        <div class="form-group {{ $errors->has('imgUser') ? ' has-error' : '' }}">
                            <label for="nombre">Foto</label>
                            <input type="hidden" name="imgUser" id="file-imgUser" required>
                            {!! $errors->first('imgUser', '<p class="help-block">:message</p>') !!}
                            <div id="imgUser"></div>
                        </div>
                    </div>
                    </div> 
              </div>
             
              
            </form>
          </div>
      </section>
   
    <section class="content">
<div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Dirección Habitacional</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <div class="box-body">
                <div class="row">     
               <div class="col-sm-3">
                            <div class="form-group">
                                <label>Pais</label>
                                    {!! Form::select('id_pais', $Pais, null, ['id' => 'id_pais','class'=>'form-control','placeholder'=>'Seleccione Pais ..','required']) !!}
                                    {!! $errors->first('id_pais', '<p class="help-block">:message</p>') !!}
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Estado</label>
                                    {!! Form::select('id_state',[],null,['id'=>'id_state','class' => 'form-control','placeholder'=>'Seleccione Un Estado','required']) !!}
                                    {!! $errors->first('id_state', '<p class="help-block">:message</p>') !!}
                        </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Municipio</label>
                                    {!! Form::select('id_municipio',[],null,['id'=>'id_municipio','class' => 'form-control','placeholder'=>'Seleccione Un Municipio','required']) !!}
                                    {!! $errors->first('id_municipio', '<p class="help-block">:message</p>') !!}
                            </div>
                        </div>
                        <div class="col-sm-3">  
                            <div class="form-group">
                                <label >Ciudad</label>
                                    {!! Form::select('id_ciudad',[],null,['id'=>'id_ciudad','class' => 'form-control','placeholder'=>'Seleccione Una Ciudad','required']) !!}
                                    {!! $errors->first('id_ciudad', '<p class="help-block">:message</p>') !!}
                            </div>
                        </div>
                        <div class="col-sm-3">
                            <div class="form-group">
                                <label>Parroquias</label>
                                <select type="text" class="form-control" id="id_parroquia" name="id_parroquia" placeholder="ocupacion" ></select>
                            </div>
                        </div>
                     <div class="col-sm-12">
                        <label>Dirección</label>
                    <textarea class="form-control" rows="3" placeholder="Direccion ..." name="direccion" id="direccion"></textarea>
                    </div>
                </div>
                
             </div><div class="box-footer">
                        <div class="col-lg-offset-2 col-lg-10">
                            <button class="btn btn-primary pull-right" type="submit" id="CrearUsuario">Crear</button>
                            <button class="btn btn-primary pull-right" type="submit" id="limpiar_formulario_usuario">Limpiar</button>
                             <button class="btn btn-primary pull-right" type="submit" id="limpiar_formulario_usuario">Cancelar</button>
                        </div> 
                    </div>    
                    </div>
                    </div>
                    </div> 
            
              <!-- /.box-body -->

              
              
            </form>
          </div>
      </section>
    
<!--     Modales           -->
    
<div aria-hidden="true" aria-labelledby="myModalLabel" id="pleaseWaitDialog" 
        data-backdrop="static" data-keyboard="false" role="dialog" tabindex="-1" class="modal fade">
       <div class="modal-dialog modal-sm">
           <div class="modal-content">
               <div class="modal-header">                    
                   <h4 class="modal-title">Por favor, espere que esta guardando</h4>
               </div>
               <div class="modal-body">
                   <div class="progress progress-striped active progress-lg">
                       <div style="width: 100%" aria-valuemax="100" aria-valuemin="0" aria-valuenow="45" role="progressbar" class="progress-bar progress-bar-success">
                           <span class="sr-only">100% Complete</span>
                       </div>
                   </div>
               </div>                
           </div>
       </div>
    </div>
<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="modalError" class="modal fade">
                <div class="modal-dialog modal-sm">
                    <div class="modal-content">
                        <div class="modal-header box-primary">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title"></h4>
                        </div>
                        <div class="modal-body" id="modalerrorbody">
                            
                              
                           
                        </div>
                        <div class="modal-footer">
                            <button data-dismiss="modal" class="btn btn-success" type="button">Aceptar</button>
                        </div>
                    </div>
                </div>
            </div>
@endsection
@section('script')
<script src="{{ asset('js/Usuario.js') }}"></script>
<script src="{{ asset('js/MarksUsers.js') }}"></script>
<script src="{{ asset('js/dropdown.js') }}"></script>
@endsection


