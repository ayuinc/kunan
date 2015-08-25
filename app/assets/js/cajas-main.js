$(document).ready(function() {

	function resetCajas(){
		$(".caja.persona .inner img.normal").removeClass("normal");
		$(".caja.persona .inner img").removeClass("mirando").addClass('mirando');
		$(".caja.persona .inner img.mirando1").removeClass("mirando").addClass('normal');
	}


	$(".caja.persona").hover( function (){
		row = $(this).data("row");
		col = $(this).data("col");

		resetCajas();
		// izquierda
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col-1)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col-1)+"']").find(".inner img.mirando6").removeClass("mirando").addClass('normal');
		// derecha
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col+1)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col+1)+"']").find(".inner img.mirando5").removeClass("mirando").addClass('normal');
		// izquierda 2
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col-2)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col-2)+"']").find(".inner img.mirando6").removeClass("mirando").addClass('normal');
		// derecha 2
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col+2)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row)+"'][data-col='"+(col+2)+"']").find(".inner img.mirando5").removeClass("mirando").addClass('normal');
		// izquierda-abajo
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col-1)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col-1)+"']").find(".inner img.mirando4").removeClass("mirando").addClass('normal');
		// derecha-abajo 2
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col+2)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col+2)+"']").find(".inner img.mirando2").removeClass("mirando").addClass('normal');
		// izquierda-abajo 2
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col-2)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col-2)+"']").find(".inner img.mirando4").removeClass("mirando").addClass('normal');
		// derecha-abajo
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col+1)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col+1)+"']").find(".inner img.mirando2").removeClass("mirando").addClass('normal');
		// abajo
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row+1)+"'][data-col='"+(col)+"']").find(".inner img.mirando3").removeClass("mirando").addClass('normal');
		// arriba
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col)+"']").find(".inner img.mirando8").removeClass("mirando").addClass('normal');
		// arriba-derecha
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col+1)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col+1)+"']").find(".inner img.mirando7").removeClass("mirando").addClass('normal');
		// arriba-izquierda
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col-1)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col-1)+"']").find(".inner img.mirando9").removeClass("mirando").addClass('normal');
		// arriba-derecha 2
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col+2)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col+2)+"']").find(".inner img.mirando7").removeClass("mirando").addClass('normal');
		// arriba-izquierda2
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col-2)+"']").find(".inner img.normal").removeClass("normal").addClass('mirando');
		$(".caja.persona[data-row='"+(row-1)+"'][data-col='"+(col-2)+"']").find(".inner img.mirando9").removeClass("mirando").addClass('normal');



	});

	$("#cajas").mouseleave(function(event) {
		resetCajas();
	});



});