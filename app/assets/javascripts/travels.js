// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
  function dayhandler() {
    //Change Pricing
    var sum = 0;
    var allEvents = document.getElementsByClassName("event");
    console.log(allEvents.length);
    for (var i = 0; i < allEvents.length; i++){
      if (allEvents[i].dataset.minValue <= day.getValue()){
        $(allEvents[i]).css("display","block");
        sum += parseInt(allEvents[i].dataset.cost);
      } else{
        $(allEvents[i]).css("display","none");
      }
    }
    if (day != null){
      var hotelCosts = 150 * day.getValue();
      $('#total-price').text(sum + hotelCosts);
      $('#current-days').text("Current Days: " + day.getValue());
    }
  };
  var day = $('#days').slider()
    .on('slide', dayhandler)
    .data('slider');
  dayhandler();
});
