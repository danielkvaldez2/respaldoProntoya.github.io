$(document).ready(function() {
    // Check for the various File API support.

    /* ********************************** BOTON ARRIBA ****************************** */
     
    $('#IrArriba').hide();
    $(function(){
        $(window).scroll(function(){
            if($(this).scrollTop() > 200){
                $('#IrArriba').fadeIn();
            }else{
                $('#IrArriba').fadeOut(); 
            }
        })
        $('#IrArriba span').click(function(){ 
            $('body,html').animate({
                scrollTop: 0
            }, 1000);
            return false;
        })
    }) 

    /* **********************************ir  div a div   ****************************** */ 

    $('#link1').on('click', function(e) {
        e.preventDefault();
        $("html, body").animate({scrollTop: $('#home').offset().top }, 1000);
    });
 
   

    /************** *************************************************** */
    
    $('.btn-carrito2').on('click', function(){
      //alert($(this).attr('id') );
        $("#bg-windows").css('visibility', 'visible'); 
        return false; 
    });
   /* $('.btnComprar').on('click', function(){
        //alert($(this).attr('id') );
          $("#bg-windows").css('visibility', 'visible'); 
         
          return false; 
      });*/
    $('.btnCerrar').on('click', function(){
        //alert($(this).attr('id') );
          $("#bg-windows").css('visibility', 'hidden'); 
          return false; 
      });

     
      



    });

/********************************************************************************* */



  
    
 

