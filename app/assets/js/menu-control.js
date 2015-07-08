$(document).scroll(function() {    
    var scroll = $(this).scrollTop();

    if (scroll >= 50) {
        $("#menu").addClass("active");
    } else {
        $("#menu").removeClass("active");
    }

});

$(".menu-toggle").on('click', function() {
  $(this).toggleClass("on");
  $('.menu-section').toggleClass("on");
  $("nav ul").toggleClass('hidden');
});

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