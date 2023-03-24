$("#submit").click(function() {
	var state = $("#state-dropdown").val();

	$.ajax({
		method: "POST",
		url: "location",
		data: {
			state: state
		}
	}).done(function(data) {
		alert("Success!");
		console.log(data);
	}).fail(function() {
		alert("Fail!");
	});
});