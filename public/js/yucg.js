$(document).ready(function() {
  function goToByScroll(id){
    // Reove "link" from the ID
    id = id.replace("link", "");
      // Scroll
    $('html,body').animate({
        scrollTop: $("#div-"+id).offset().top-70},
        'slow');
  }

  $("#mainmenu > ul > li > a").click(function(e) { 
        // Prevent a page reload when a link is pressed
      e.preventDefault(); 
        // Call the scroll function
      goToByScroll($(this).attr("id"));           
  });
});