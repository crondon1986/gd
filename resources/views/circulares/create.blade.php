@extends('layouts.default')
@section('contenido')
<section class="content-header">
      <h1>
       
        <small></small>
      </h1>
      <ol class="breadcrumb">
       
        <li class="active">Crear</li>
      </ol>
    </section>
 <section class="content">
   <!-- general form elements -->
        
<div class="box box-primary" style="" id="circular">
            <div class="box-header with-border">
              <h3 class="box-title">Circular</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            
              <div class="box-body">
                 <div class="col-sm-12">
                            <div class="form-group">
                                <label for="telefono">Descripción del Documento</label>
                                <input type="text" class="form-control" id="descripcion_documento" name="descripcion_documento" placeholder="Descripcion  del Documento" required>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group">
                                <label for="telefono">Para</label>
                            <!--    <input type="text" class="form-control" id="para" name="para" placeholder="Para" required>-->
                                <select class="form-control" name="id_destinos_para[]" id="id_destinos_para" multiple="multiple"> 
                                    <option>Seleccione Grupo de destions</option>
                                    <option value="1" >PROFESORES</option>
                                     <option value="2" >ESTUDIANTES</option>
                                    </select>
                            </div>
                        </div>
                  <div class="col-sm-12">
                        <label>Cuerpo del Documento</label>
                        <input type="hidden" class="form-control" id="cuerpo" name="cuerpo" placeholder="Para" required>
                    <textarea class="form-control" rows="6" cols="10" placeholder="Cuerpo del Documento ..." name="editor" id="editor"></textarea>
                    </div>
              </div>
              <!-- /.box-body -->

             <!-- <div class="box-footer">
                <div class="col-sm-12">
                  
                  <button  class="btn btn-primary pull-right" type="submit" id="CrearDocumento">Generar</button>

                  <button  class="btn btn-success pull-right" type="submit" id="CrearDocumento">Generar y Remitir</button>
                  <button type="submit" class="btn btn-primary">Cancelar</button>
                </div>

              
              </div>-->
              <div class="box-footer">
                
                <div class="text-right boton-margin">

                                    <button type="button" class="btn btn-primary" type="submit" id="CrearDocumento">Crear</button>
                                    
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
   CKEDITOR.replace( 'editor' );
   CKEDITOR.replace( 'editor_convocatoria' );

$("#id_destinos_para").select2({
 // maximumSelectionLength: 5
});
</script>
<script src="{{ asset('js/Documento.js') }}"></script>
<script src="{{ asset('js/dropdown.js') }}"></script>
@endsection