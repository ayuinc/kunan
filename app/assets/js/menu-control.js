$(document).scroll(function() {    
    var scroll = $(this).scrollTop();

    if (scroll >= 50) {
        $("#menu").addClass("active");
    } else {
        $("#menu").removeClass("active");
    }

});


//Menu
$(".menu-toggle").on('click', function() {
  $(this).toggleClass("on");
  $('.menu-section').toggleClass("on");
  $("nav ul").toggleClass('hidden');
});

//scroll
$(function() {
  $('a[href*=#]:not([href=#])').click(function() {
   if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
        $('html,body').animate({
          scrollTop: target.offset().top
        	}, 1000);
        			return false;
      }
    }
  });
});



// Limitación de palabras
$(document).ready(function() {
  $("#freeform_otras_fuentes_de_financiamiento").parent().parent().addClass("hidden");
  $("#freeform_describa_el_principal_problema_social").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 80) {
          var trimmed = $(this).val().split(/\s+/, 80).join(" ");
          $(this).val(trimmed + " ");
      }
  });

}); 

$(document).ready(function() {
  $("#freeform_cual_es_el_publico_objetivo_directo_e_indirecto").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 20) {
          var trimmed = $(this).val().split(/\s+/, 20).join(" ");
          $(this).val(trimmed + " ");
      }
  });
});

$(document).ready(function() {
  $("#freeform_enuncie_como_su_organizacion_aporta").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 60) {
          var trimmed = $(this).val().split(/\s+/, 60).join(" ");
          $(this).val(trimmed + " ");
      }
  });
}); 

$(document).ready(function() {
  $("#freeform_efectividad_del_modelo").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 100) {
          var trimmed = $(this).val().split(/\s+/, 100).join(" ");
          $(this).val(trimmed + " ");
      }
  });
});

$(document).ready(function() {
  $("#freeform_calidad_del_servicio_y_o_producto").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 60) {
          var trimmed = $(this).val().split(/\s+/, 60).join(" ");
          $(this).val(trimmed + " ");
      }
  });
});

$(document).ready(function() {
  $("#freeform_impacto_social").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 100) {
          var trimmed = $(this).val().split(/\s+/, 100).join(" ");
          $(this).val(trimmed + " ");
      }
  });
}); 

$(document).ready(function() {
  $("#freeform_innovacion").on('keyup', function() {
      var words = this.value.match(/\S+/g).length;
      if (words > 100) {
          var trimmed = $(this).val().split(/\s+/, 100).join(" ");
          $(this).val(trimmed + " ");
      }
  });
}); 

// Limitación de caracteres
$(document).ready(function() {

    var total_letras = 11;

    $('#freeform_ruc').keyup(function() {
    var longitud = $(this).val().length;
    var resto = total_letras - longitud;
    $('#numero').html(resto);
    if(resto <= 0){
        $('#freeform_ruc').attr("maxlength", 11);
    }
    });

});


$(document).ready(function() {

    var total_letras = 9;

    $('#freeform_telefono_celular').keyup(function() {
    var longitud = $(this).val().length;
    var resto = total_letras - longitud;
    $('#numero').html(resto);
    if(resto <= 0){
        $('#freeform_telefono_celular').attr("maxlength", 9);
    }
    });

});


$(document).ready(function() {

    var total_letras = 10;

    $('#freeform_cuando_comenzaron_a_operar_dd_mm_yyyy').keyup(function() {
    var longitud = $(this).val().length;
    var resto = total_letras - longitud;
    $('#numero').html(resto);
    if(resto <= 0){
        $('#freeform_cuando_comenzaron_a_operar_dd_mm_yyyy').attr("maxlength", 10);
    }
    });

});

$(document).ready(function() {

    var total_letras = 10;

    $('#freeform_cuando_se_constituyeron_dd_mm_yyyy').keyup(function() {
    var longitud = $(this).val().length;
    var resto = total_letras - longitud;
    $('#numero').html(resto);
    if(resto <= 0){
        $('#freeform_cuando_se_constituyeron_dd_mm_yyyy').attr("maxlength", 10);
    }
    });

});

$(document).ready(function() {

    var total_letras = 9;

    $('#freeform_telefono_fijo').keyup(function() {
    var longitud = $(this).val().length;
    var resto = total_letras - longitud;
    $('#numero').html(resto);
    if(resto <= 0){
        $('#freeform_telefono_fijo').attr("maxlength", 9);
    }
    });

});


// Limitación a solo numeros
$(document).ready(function() {

  function validar(event) {
     return /[0-9]|\./.test(String.fromCharCode(event.keyCode)) && !event.shiftKey;
  }

  $('#freeform_fecha_nacimiento').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_tiempo_en_dicho_cargo_en_cantidad_de_meses').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_tiempo_en_la_organizacion_en_cantidad_de_meses').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_cuando_comenzaron_a_operar_dd_mm_yyyy').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_ruc').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_cuando_se_constituyeron_dd_mm_yyyy').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_cuanta_gente_se_encarga_de_dirigir_y_gestionar_la_iniciativa').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_cantidad_de_remunerados_a_tiempo_parcial').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_cantidad_de_remunerados_a_tiempo_completo').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_cantidad_de_talento_voluntario').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_si_llenas_otros_ingresa_la_cantidad').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_monto_exacto_s').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_telefono_fijo').keypress(function(e) {
      return validar(e);
  });
  $('#freeform_telefono_celular').keypress(function(e) {
      return validar(e);
  });
});



/*ACCION HIDEN*/
// $(document).ready(function(){
//   $(".ff_composer").children().eq(9).children().eq(1).addClass( "hidden" );

// });

/*Acción de ocultar y mostrar elemento*/

$(document).ready(function() {
    $('#freeform_esta_inscrita_en_registros_publicos_1').attr( "checked","checked" );
    $("input[name$='esta_inscrita_en_registros_publicos']").click(function() {
        // var test = $(this).();
        if ($(this).val() != 'Si') {

          $(".ff_composer").children().eq(10).children().eq(1).addClass('hidden');
        }
        else {
          $(".ff_composer").children().eq(10).children().eq(1).removeClass('hidden');
        }

    });

    $('#freeform_esta_inscrita_en_registros_publicos_2').click(function() {
        if ($(this).val() == 'No') {

          $("input[name='ruc']").val("");
          $("input[name='cuando_se_constituyeron_dd_mm_yyyy']").val("");
        }
    });
});

$('#freeform_fuente_de_financiamiento_6').attr( "checked" , "checked" );

$("#freeform_fuente_de_financiamiento_6").click(function(e) {
  if($(this).is(":checked")) {
    $("#freeform_otro_fuentes_de_financiamiento").parent().parent().removeClass("hidden");
  } else {
    $("#freeform_otro_fuentes_de_financiamiento").parent().parent().addClass("hidden");
  }
});

$('#freeform_por_que_medio_te_enteraste_de_la_convocatoria_9').attr( "checked" , "checked" );

$("#freeform_por_que_medio_te_enteraste_de_la_convocatoria_9").click(function(e) {
  if($(this).is(":checked")) {
    $("#freeform_si_selecciono_otros_medios").parent().parent().removeClass("hidden");
  } else {
    $("#freeform_si_selecciono_otros_medios").parent().parent().addClass("hidden");
  }
});

// $(document).ready(function() {
//   $("#modal-entrada").removeClass('hidden');
//   $("#boton-modal").click();
// });



$(document).ready(function() {
    $("input[id=freeform_quiero_enviar_mi_aplicacion]").click(function(){
    if($(this).is(':checked')) {
            addRequired();  
            $('input[value="Guardar"]').val('Enviar');
        } else {
            removeRequired();  
            $('input[value="Enviar"]').val('Guardar');
        }  
    });
});
     


function addRequired() {
  $(".ff_composer").find("input").each(function(index, element) { 
    if ($(element).attr("type") == "checkbox") { return true; }
    if ($(element).attr("name").indexOf("otro") >= 0) { return true; }
    if ($(element).attr("name").indexOf("link") >= 0) { return true; }
    if(!$(element).parent().parent().hasClass("hidden")) { 
      $(element).attr("required", "true"); 
    } 
  });
  $(".ff_composer").find("textarea").each(function(index, element) { 
    if(!$(element).parent().parent().hasClass("hidden")) { 
      $(element).attr("required", "true"); 
    } 
  });
} 

function removeRequired() {
  $(".ff_composer").find("input").each(function(index, element) { 
      $(element).removeAttr("required"); 
  });
  $(".ff_composer").find("textarea").each(function(index, element) { 
      $(element).removeAttr("required"); 
  });
}
 

