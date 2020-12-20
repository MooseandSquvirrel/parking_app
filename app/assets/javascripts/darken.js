
function darken_func() {
$("button").hover(
    function(){
        $("body").addClass("evil").removeClass("good");
        $("#nav_bar").addClass("evil glow").removeClass("good");
        $("#container_helmet").addClass("btn_background_evil").removeClass("btn_background");

        $("#clouds").addClass("clouds").removeClass("cloudsb")
        $("#clouds2").addClass("clouds2").removeClass("clouds2b")
        $("#clouds3").addClass("clouds3").removeClass("clouds3b")
        $("#clouds4").addClass("clouds4").removeClass("clouds4b")
        $("#clouds5").addClass("clouds5").removeClass("clouds5b")
        $("#clouds6").addClass("clouds6").removeClass("clouds6b")
        $("#mount").addClass("mount2").removeClass("mount3")

        $("button").addClass("btn_color").removeClass("btn-warning")
        $("#storm").addClass("bolt").removeClass("bolt_start")
    }, 
    function(){
        $("body").addClass("good").removeClass("evil");
        $("#nav_bar").addClass("good").removeClass("evil glow");
        $("#container_helmet").addClass("btn_background").removeClass("btn_background_evil");
        
        $("#clouds").addClass("cloudsb").removeClass("clouds")
        $("#clouds2").addClass("clouds2b").removeClass("clouds2")
        $("#clouds3").addClass("clouds3b").removeClass("clouds3")
        $("#clouds4").addClass("clouds4b").removeClass("clouds4")
        $("#clouds5").addClass("clouds5b").removeClass("clouds5")
        $("#clouds6").addClass("clouds6b").removeClass("clouds6")
        $("#mount").addClass("mount3").removeClass("mount2")

        $("button").addClass("btn-warning").removeClass("btn_color")
        $("#storm").addClass("bolt_start").removeClass("bolt")
  });

}

window.onload = function lighten_func() {
        $("body").addClass("good").removeClass("evil");
    }
    
function sword() {
    $( "#button" ).click(function() {
        alert( "Handler for .click() called." );
      });
        $("button").click(function(){
        $("#sword").addClass("swordc")  
        $("body").removeClass("evil").addClass("good")
      });
}
