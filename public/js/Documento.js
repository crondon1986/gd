$("#CrearDocumento").click(function () 
{    var contenido = CKEDITOR.instances['editor'].getData();//estraer el html
  $('#cuerpo').val(contenido);
        $('#pleaseWaitDialog').modal('show');
         $.ajax
        ({
            type: 'post',
           url:  $('#url_base').val()+'/documentos/agregarDocumento',
            data: {
                        '_token': $('input[name=_token]').val(),
                        'descripcion_documento': $('input[name=descripcion_documento]').val(),
                        'para': $('input[name=para]').val(),
                        'id_categoria': $('select[name=id_categoria]').val(),
                        'id_subcategoria': $('select[name=id_subcategoria]').val(),
                        'id_itemsubcategoria': $('select[name=id_itemsubcategoria]').val(),
                        'cuerpo':$('#cuerpo').val()
                  },
            success: function (data) 
            {
                if ((data.success==true)) 
                {
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(data.mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-success');
                   $('#modalError [class= "modal-title"]').empty().append('Informacion');
                   $('#modalError').modal('show');
                   location.href=$('#url_base').val()+'/documentos';
                }
                else 
                {
                   var mensaje='';
                   for(var i=0;i<data.errors.length;i++)
                   {
                        mensaje+=data.errors[i]+'<br>';
                   }
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-danger');
                   $('#modalError [class= "modal-title"]').empty().append('Ha ocurrido un error');
                   $('#modalError').modal('show');
                   
                }
            }
        });
 });
$("#CrearOficioContratacion").click(function () 
{
        $('#pleaseWaitDialog').modal('show');
         $.ajax
        ({
            type: 'post',
           url:  $('#url_base').val()+'/oficios/agregarOficio',
            data: {
                        '_token': $('input[name=_token]').val(),
                        'seccion': $('input[name=seccion]').val(),            
                        'contratar': $('select[name=id]').val(),
                        'para': $('select[name=id_para]').val(),
                        'id_categoria': $('select[name=id_categoria]').val(),
                        'id_subcategoria': $('select[name=id_subcategoria]').val(),
                        'id_itemsubcategoria': $('select[name=id_itemsubcategoria]').val(),
                        'asignatura':$('select[name=id_asignatura]').val(),
                        'periodo':$('select[name=periodo]').val(),
                        'concopia':'['+$("#id_dependencias").val()+']'
                  },
            success: function (data) 
            {
                if ((data.success==true)) 
                {
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(data.mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-success');
                   $('#modalError [class= "modal-title"]').empty().append('Informacion');
                   $('#modalError').modal('show');
                   location.href=$('#url_base').val()+'/documentos';
                }
                else 
                {
                   var mensaje='';
                   for(var i=0;i<data.errors.length;i++)
                   {
                        mensaje+=data.errors[i]+'<br>';
                   }
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-danger');
                   $('#modalError [class= "modal-title"]').empty().append('Ha ocurrido un error');
                   $('#modalError').modal('show');
                   
                }
            }
        });
 });
$("#CorregirDocumento").click(function () 
{var contenido = CKEDITOR.instances['editor'].getData();//estraer el html
  $('#cuerpo').val(contenido);
    var id_Documento=$('input[name=id_documento]').val();
    $('#pleaseWaitDialog').modal('show');
    $.ajax
    ({
            type: 'put',
           url:  $('#url_base').val()+'/documentos/corregirDocumento/'+id_Documento,
            data: {
                        '_token': $('input[name=_token]').val(),
                        'id_documento':id_Documento,
                        'descripcion_documento': $('input[name=descripcion_documento]').val(),
                        'para': $('input[name=para]').val(),
                        'id_categoria': $('select[name=id_categoria]').val(),
                        'id_subcategoria': $('select[name=id_subcategoria]').val(),
                        'id_itemsubcategoria': $('select[name=id_itemsubcategoria]').val(),
                        'cuerpo':$('#cuerpo').val()
                  },
            success: function (data) 
            {
                if ((data.success==true)) 
                {
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(data.mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-success');
                   $('#modalError [class= "modal-title"]').empty().append('Informacion');
                   $('#modalError').modal('show');
                   location.href=$('#url_base').val()+'/documentos';
                }
                else 
                {
                   var mensaje='';
                   for(var i=0;i<data.errors.length;i++)
                   {
                        mensaje+=data.errors[i]+'<br>';
                   }
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-danger');
                   $('#modalError [class= "modal-title"]').empty().append('Ha ocurrido un error');
                   $('#modalError').modal('show');
                   
                }
            }
      });
 });
$("#CrearOficioContratacionPreparadores").click(function () 
{
        $('#pleaseWaitDialog').modal('show');
         $.ajax
        ({
            type: 'post',
           url:  $('#url_base').val()+'/preparaduria/agregarOficioPreparador',
            data: {
                    '_token': $('input[name=_token]').val(),
                    'nro_consejo': $('input[name=nro_consejo]').val(),            
                    'fechas_consejo': $('input[name=fechas_consejo]').val(),          
                    'fechas_contratacion': $('input[name=fechas_contratacion]').val(),          
                    'cuerpo':$('#cuerpo').val(),
                    'para': $('select[name=id_para]').val(),
                    'periodo':$('select[name=id_periodo]').val(),
                    'concopia':'['+$("#id_dependencias").val()+']',
                    'plaza':$('input[name=plaza]').val()
                  },
            success: function (data) 
            {
                if ((data.success==true)) 
                {
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(data.mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-success');
                   $('#modalError [class= "modal-title"]').empty().append('Informacion');
                   $('#modalError').modal('show');
                   location.href=$('#url_base').val()+'/documentos';
                }
                else 
                {
                   var mensaje='';
                   for(var i=0;i<data.errors.length;i++)
                   {
                        mensaje+=data.errors[i]+'<br>';
                   }
                   $('#pleaseWaitDialog').modal('hide');
                   $('#modalerrorbody').empty().append(mensaje);
                   $('#modalError [class= "modal-dialog  modal-sm"]').addClass('modal-danger');
                   $('#modalError [class= "modal-title"]').empty().append('Ha ocurrido un error');
                   $('#modalError').modal('show');
                   
                }
            }
        });
 });