$(document).ready ->

#ejercicio1

  arlen = 0
  arlen2 = 0

  $.fx.speeds._default = 1000
  $ ->
    $("#e1").dialog
      autoOpen: false
      show: "blind"
      hide: "explode"
      width: 170


  $ ->
    $("#e2").dialog
      autoOpen: false
      show: "blind"
      hide: "explode"
      width: 200


  $("#tarea").hide()
  $(".error1").hide()
  
  #elementos que se pueden arrastrar 
  $(".arrastrable").draggable()
  $(".arrastrable").data "soltado", false
  
  #variable para contar los elementos soltados CARACTERÍSTICAS
  $(".suelta1").data "numsoltar", 0
  
  #elementos donde se puede soltar
  $(".suelta1").droppable
    drop: (event, ui) ->
      unless ui.draggable.data("soltado")
        ui.draggable.data "soltado", true
        elem1 = $(this)
        elem1.data "numsoltar", elem1.data("numsoltar") + 1
        
        #elem1.html("Llevo " + elem1.data("numsoltar") + " elementos soltados");
        arlen = elem1.data("numsoltar")

    out: (event, ui) ->
      if ui.draggable.data("soltado")
        ui.draggable.data "soltado", false
        elem1 = $(this)
        elem1.data "numsoltar", elem1.data("numsoltar") - 1
        
        #elem1.html("Llevo " + elem1.data("numsoltar") + " elementos soltados");
        arlen = elem1.data("numsoltar")

  
  #variable para contar los elementos soltados COMPORTAMIENTOS
  $(".suelta2").data "numsoltar", 0
  
  #elementos donde se puede soltar
  $(".suelta2").droppable
    drop: (event, ui) ->
      unless ui.draggable.data("soltado")
        ui.draggable.data "soltado", true
        elem2 = $(this)
        elem2.data "numsoltar", elem2.data("numsoltar") + 1
        
        #elem2.html("Llevo " + elem2.data("numsoltar") + " elementos soltados");
        arlen2 = elem2.data("numsoltar")

    out: (event, ui) ->
      if ui.draggable.data("soltado")
        ui.draggable.data "soltado", false
        elem2 = $(this)
        elem2.data "numsoltar", elem2.data("numsoltar") - 1
        
        #elem2.html("Llevo " + elem2.data("numsoltar") + " elementos soltados");
        arlen2 = elem2.data("numsoltar")

  
  #//////// SONIDOS DE BOTONES ////////////////////////


  
  #//////VALIDAR EJERCICIO//////////////////////////////
  $("#validar").click ->
    
    $(".arrastrable").draggable disabled: true
    $("#tarea").show "slow"
    puntos = arlen + arlen2 #++++++++++++++++++++++++ VARIABLE ALMACENAR EN BASE DE DATOS +++++++++++++++++
    jAlert puntos
    $(".error1").show "slow"  if puntos < 10

  
  #//////////////////////////////////////////////////////
  
  #soltar solo elementos rojos
  $("#sueltarojo").droppable "option", "accept", ".caracteristica" #rojo
  #soltar solo elementos azules
  $("#sueltaazul").droppable "option", "accept", ".comportamiento" #azul
  
  #////////////////////////
  $("#navigation").mouseover ->
    $("#texto-vertical").hide()
    $("#iniciar").show()

  $("#navigation").mouseout ->
    $("#texto-vertical").show()
    $("#iniciar").hide()

  $(".error1").mouseover ->
    $("audio")[0].play()

  $(".error1").click ->
    $("#e1").dialog "open"
    $("#e2").dialog "open"
    

$(window).load ->
  $("#startTour").click ->
    $("#joyRideTipContent").joyride
      scrollSpeed: 3000
      timer: 6000
      startTimerOnClick: true
      nextButton: true
      
      
   
#///////////////////////////////////////


