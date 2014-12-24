$('.dest-activities input').change(function(e){
	//Loop through, add to sum price, add to night counter
	var sum = 0, nights = 0;
	var packages = "";
	$('.dest-activities input').each(function(){
		var activity = this;
		if (activity.checked){
			sum += parseInt($(activity).attr("value"));
			nights += parseInt($(activity).attr("data-days"));
			if (activity.name == "oahu" && packages.indexOf("oahu") < 0){
				packages = "oahu";
			} else if (activity.name == "maui" && packages.indexOf("maui") < 0){
				packages += ",maui";
			} else if (activity.name == "bigisland" && packages.indexOf("bigisland") < 0){
				packages += ",bigisland";
			}
		}
	});
	$('#total-price').text(sum);
	$('#estimated-days').text(nights + " nights");
	$('.package').each(function(){
		var dest = this;
		if ($(dest).attr("data-include") != packages && packages != ""){
			$(dest).css("display","none");
		} else{
			$(dest).css("display","inline-block");
		}
	});
});
