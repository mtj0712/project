$("#submit").click(function() {
	var city = $("#city").val();

	$.ajax({
		method: "POST",
		url: "current",
		data: {
			city: city
		}
	}).done(function(data) {
		$("#temp").text(data["Temperature (Celcius)"]);
	}).fail(function() {
		alert("Fail!");
	});
});