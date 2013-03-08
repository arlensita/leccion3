$(function() {
	$('#sb-slider').slicebox({
		orientation			: 'h'
		});
				
	if( !Modernizr.csstransforms3d ) {
	$('#sb-note').show();
					
	$('body').append(
	$('script').attr( 'type', 'text/javascript' ).attr( 'src', 'js/jquery.easing.1.3.js' )
	);
	}	
});