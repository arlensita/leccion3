
		$(document).ready(function(){
			$("#tar").hide(); $("#texto-2").hide(); $("#validar2").hide(); $("#tarea2").hide();
			
			$.fx.speeds._default = 1000;
			$(function(){ $( "#e3" ).dialog({autoOpen: false,show: "blind",hide: "explode",  width: 90, height:55 });              });
			$(function(){ $( "#e4" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 210, height:55});  });
			$(function(){ $( "#e5" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 5, height:55});  });
			$(function(){ $( "#e6" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 110, height:55});  });
			$(function(){ $( "#e7" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 90, height:55});              });
			$(function(){ $( "#e8" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 30, height:55});  });
			$(function(){ $( "#e9" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 5, height:55});  });
			$(function(){ $( "#e10" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 125, height:55});  });
			$(function(){ $( "#e11" ).dialog({autoOpen: false,show: "blind",hide: "explode",width: 90, height:55 });			   });
			$(function(){ $( "#e12" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 270, height:55}); });
			$(function(){ $( "#e13" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 100, height:55}); });
			$(function(){ $( "#e14" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 125, height:55}); });
			$(function(){ $( "#e15" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 135, height:55}); });
			$(function(){ $( "#e16" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 10, height:55});  });
			$(function(){ $( "#e17" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 100, height:55}); });
			$(function(){ $( "#e18" ).dialog({autoOpen: false,show: "blind",hide: "explode", width: 125, height:55}); });
			

  		
  			$('#navigation').mouseover(function(){
  				$("#texto-vertical").hide();
  				$("#iniciar").show();
  				$("#etiquetas").css ({'margin-top': '-411px'});  
  			});
  		
  			$('#navigation').mouseout(function(){
  				$('.texto').remove();
  				$("#texto-vertical").show();
  				$("#iniciar").hide();
  				$("#texto-2").hide();
  				$("#etiquetas").css ({'margin-top': '-411px'}); 
  			});
		});
	
				$(window).load(function() {

      				$('#startTour2').click(function(){
      		  
      		  			$('#joyRideTipContent').joyride({
           
  							'scrollSpeed': 3000,              // Page scrolling speed in ms
  							'timer': 5000,                   // 0 = off, all other numbers = time(ms) 
  							'startTimerOnClick': true,       // true/false to start timer on first click
   							'nextButton': true,              // true/false for next button visibility
              			});
      				});
      			});
    		
