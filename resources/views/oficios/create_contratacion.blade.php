@extends('layouts.default')
@section('contenido')
<section class="content-header">
      <h1>
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href=""><i class=""></i>Oficios</a></li>
        <li class="active">Crear</li>
      </ol>
    </section>
 <section class="content">
   <!-- general form elements -->

   <div class="box box-primary" style="" id="contratacion">
            <div class="box-header with-border">
              <h3 class="box-title">Contratación</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
             <input type="hidden" name="_token" value="<?php echo csrf_token(); ?>">
                  <input id='id_categoria' type="hidden" name="id_categoria" value="1">
                   <input id='id_subcategoria' type="hidden" name="id_subcategoria" value="3">
                    <input id='id_itemsubcategoria' type="hidden" name="id_itemsubcategoria" value="10">
                    <input id='id_tipo_oficio' type="hidden" name="id_tipo_oficio" value="1">

                     <input type="hidden" id="tipo" value="{{ env('FORMAT_IMG') }}">
              <div class="box-body">
                                    
                <div class="col-sm-12"> 

                    <div class="col-sm-6">
                             <div class="form-group">
                                <label for="periodo">Tipo</label>
                                <select class="form-control" name="tipo_contratacion" id="tipo_contratacion"> 
                                    <option value ="">Seleccione </option>
                                    <option value="contratacion" >Contratación</option>
                                    <option value="recontratacion" >Recontratación</option>
                                    </select>
                            </div>
                    </div>
                      <div class="col-sm-6">
                            <div class="form-group">
                                <label>Contratar a</label>
                                  {!! Form::select('id', $Profesor, null, ['id' => 'id','name'=>'id','class'=>'form-control','placeholder'=>'Seleccione Profesor a Contratar ..','required']) !!}
                                    {!! $errors->first('id', '<p class="help-block">:message</p>') !!}
                            </div>
                        </div>

                </div>
                <div class="col-sm-12">
                     <div class="col-sm-6">
                            <div class="form-group">
                                <label>Materia</label>
                                    {!! Form::select('id_asignatura', $Asignatura, null, ['id' => 'id_asignatura','class'=>'form-control','placeholder'=>'Seleccione Asignatura ..','required']) !!}
                                    {!! $errors->first('id_asignatura', '<p class="help-block">:message</p>') !!}
                            </div>
                      </div>
                      <div class="col-sm-6">
                            <div class="form-group">
                                <label for="periodo">Periodo</label>
                                <select class="form-control" name="periodo" id="periodo"> 
                                    <option>Seleccione el Periodo</option>
                                    <option value="I-2018" selected>I-2018</option>
                                    </select>
                            </div>
                      </div >
                 </div>          
                <div class="col-sm-12">
                    <div class="col-sm-6">
                      <div class="form-group">
                                <label for="telefono">sección</label>
                                <input type="text" class="form-control" id="seccion" name="seccion" placeholder="Sec 01 y 02" required>
                            </div>
                    </div>
                    <div class="col-sm-6">
                        
                        <div class="form-group {{ $errors->has('imgUser') ? ' has-error' : '' }}">
                            <label for="nombre">Forma P1</label>
                            <input type="hidden" name="imgUser" id="file-imgUser" required>
                            {!! $errors->first('imgUser', '<p class="help-block">:message</p>') !!}
                            <div id="imgUser"></div>
                       
                      </div>
                   <!--   <div class="col-sm-6">
                        <div class="form-group {{ $errors->has('imgUser') ? ' has-error' : '' }}">
                            <label for="nombre">Forma P1</label>
                            <input type="hidden" name="imgUser" id="file-imgUser" required>
                            {!! $errors->first('imgUser', '<p class="help-block">:message</p>') !!}
                            <div id="imgUser"></div>
                        </div>
                      </div>-->
                    </div>
                </div>
              <div class="col-sm-12">
                  <div class="col-sm-12">
                            <div class="form-group">
                                <label>Para</label>
                                  {!! Form::select('id', $Usuarios, null, ['id' => 'id_para','name'=>'id_para','class'=>'form-control','placeholder'=>'Seleccione Jefe de Escuela ..','required']) !!}
                                    {!! $errors->first('id', '<p class="help-block">:message</p>') !!}
                            </div>
                  </div>
              </div>
              <div class="col-sm-12">
                <div class="col-sm-12">
                        <div class="form-group">
                  <label>Con Copia</label>
                  
                      {!! Form::select('id_dependencias', $Dependencia, null, ['id' => 'id_dependencias','multiple'=>'multiple','name'=>'id_dependencias','class'=>'form-control','required']) !!}
        {!! $errors->first('id_dependencias', '<p class="help-block">:message</p>') !!}       
                 </div>
                            </div>
              </div>
            </div>
              <!-- /.box-body -->

              <div class="box-footer">
                
                <div class="text-right boton-margin">

                                    <button type="button" class="btn btn-primary" type="submit" id="CrearOficioContratacion">Crear</button>
                                    
                                    <button type="button" class="btn btn-default" onclick="">Cancelar</button>

                                   <!-- <input id="opc" name="opc" value="new" type="hidden">-->
                                   <!-- <input id="id" name="id" value="-1" type="hidden">-->

                    </div>
                
              </div>
              
          
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
<script src="{{ asset('/plugins/ckeditor/ckeditor.js') }}"></script>
<script type="text/javascript">
</script>
<script src="{{ asset('js/Documento.js') }}"></script>
<script src="{{ asset('js/dropdown.js') }}"></script>


<script src="{{ asset('js/Usuario.js') }}"></script>
<script src="{{ asset('js/MarksUsers.js') }}"></script>

@endsection