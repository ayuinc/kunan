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

  function validar(e) {
    var inputVal = String.fromCharCode(e.keyCode);
      var numericReg = /^[0-9\b]+$/
      if(!numericReg.test(inputVal)) {
        e.preventDefault();
      }
      else {
        return;
      }
  }

  $('#freeform_fecha_nacimiento').keydown(function(e) {
      validar(e);
  });
  $('#freeform_tiempo_en_dicho_cargo_en_cantidad_de_meses').keydown(function(e) {
      validar(e);
  });
  $('#freeform_tiempo_en_la_organizacion_en_cantidad_de_meses').keydown(function(e) {
      validar(e);
  });
  $('#freeform_cuando_comenzaron_a_operar_dd_mm_yyyy').keydown(function(e) {
      validar(e);
  });
  $('#freeform_ruc').keydown(function(e) {
      validar(e);
  });
  $('#freeform_cuando_se_constituyeron_dd_mm_yyyy').keydown(function(e) {
      validar(e);
  });
  $('#freeform_cuanta_gente_se_encarga_de_dirigir_y_gestionar_la_iniciativa').keydown(function(e) {
      validar(e);
  });
  $('#freeform_cantidad_de_remunerados_a_tiempo_parcial').keydown(function(e) {
      validar(e);
  });
  $('#freeform_cantidad_de_remunerados_a_tiempo_completo').keydown(function(e) {
      validar(e);
  });
  $('#freeform_cantidad_de_talento_voluntario').keydown(function(e) {
      validar(e);
  });
  $('#freeform_si_llenas_otros_ingresa_la_cantidad').keydown(function(e) {
      validar(e);
  });
  $('#freeform_monto_exacto_s').keydown(function(e) {
      validar(e);
  });
  $('#freeform_telefono_fijo').keydown(function(e) {
      validar(e);
  });
  $('#freeform_telefono_celular').keydown(function(e) {
      validar(e);
  });
});



/*ACCION HIDEN*/
// $(document).ready(function(){
//   $(".ff_composer").children().eq(9).children().eq(1).addClass( "hidden" );

// });

/*Acción de ocultar y mostrar elemento*/

$(document).ready(function() {
    $('#freeform_esta_inscrita_en_registros_publicos_1').attr( "checked","checked" );
    console.log($('#freeform_esta_inscrita_en_registros_publicos_1')),
    $("input[name$='esta_inscrita_en_registros_publicos']").click(function() {
        // var test = $(this).();
        console.log($(this).val());
        if ($(this).val() != 'Si') {

          $(".ff_composer").children().eq(10).children().eq(1).addClass('hidden');
        }
        else {
          $(".ff_composer").children().eq(10).children().eq(1).removeClass('hidden');
        }

    });
});


$(document).ready(function() {
    $("input[id=freeform_quiero_enviar_mi_aplicacion]").click(function(){
    if($(this).is(':checked')) {  
            $('input[value="Guardar"]').val('Enviar');
        } else {  
            $('input[value="Enviar"]').val('Guardar');
        }  
    });
});





// // VALIDACIÓN: CAMPOS REQUERIDOS
// $(document).ready(function(){
//     // add the rule here
//     $.validator.addMethod("valueNotEquals", function(value, element, arg){
//      return arg != value;
//     }, "* Ingresa Uso de Vehículo"); 

//    $("#register-form").validate({
//     rules: {
//       nombres: "required",
//       apellidos: "required",
//       fecha_nacimiento: {
//         required: true,
//       },  
//       ciudad: {
//         valueNotEquals: "-1" 
//       },
//       telefono: {
//         required: true,
//         minlength: 5
//       },   
//       placa: {
//         required: true,
//         minlength: 5
//       },             
//       uso_del_vehiculo: {
//         valueNotEquals: "-1" 
//       },
//       agree: "required"
//     },
//     messages: {
//       nombre: "* Ingresa tu Nombre",
//       apellido: "* Ingresa tu Apellido",
//       telefono:"* Ingresa tu Teléfono",
//       placa:"* Ingresa tu Placa",
//       ciudad:"* Ingresa tu Ciudad",
//       correo: "* Ingresa tu Correo electrónico",
//       uso_de_vehiculo: "* Ingresa tu uso de vehiculo",
//     },
//     submitHandler: function(form) {
//       form.submit();
//     }
//   });
// });
// // Agregando clase "required"
// $(document).ready(function() {
//   $( "#freeform_apellidos, #freeform_nombres, #freeform_fecha_nacimiento " ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_edad, #freeform_region_de_nacimiento, #freeform_region_de_residencia" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_sexo_1, #freeform_sexo_2, #freeform_profesion" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_cargo_organizacion, #freeform_tiempo_en_dicho_cargo_en_cantidad_de_meses" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_tiempo_en_la_organizacion_en_cantidad_de_meses, #freeform_nombre_de_la_entidad" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_1, #freeform_cuando_comenzaron_a_operar_dd_mm_yyyy, #freeform_esta_inscrita_en_registros_publicos_1 " ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_esta_inscrita_en_registros_publicos_2, #freeform_regiones_2, #freeform_regiones_3 " ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_4, #freeform_regiones_5, #freeform_regiones_6 " ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_7, #freeform_regiones_8, #freeform_regiones_9 " ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_10, #freeform_regiones_11, #freeform_regiones_12" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_13, #freeform_regiones_14, #freeform_regiones_15" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_16, #freeform_regiones_17, #freeform_regiones_18" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_19, #freeform_regiones_20, #freeform_regiones_21" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_22, #freeform_regiones_23, freeform_regiones_24" ).addClass( "required" );
// });

// $(document).ready(function() {
//   $( "#freeform_regiones_25, #freeform_provincia, #freeform_distrito" ).addClass( "required" );
// });
//     