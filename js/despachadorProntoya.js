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

   // alert('aaa3');

    /************** *************************************************** */

}) //cierra document 
