//= require Chart.min
$(document).ready(function() {
	console.log('index working');
	signUpChart()
})


function signUpChart() {
	var request = $.ajax({
	  url: '/api/v1/sign_up_chart',
	  method: 'GET',
	  dataType: 'json',
	  success: function(data) {
	  	console.log("-----------------")
	  	console.log(data)
	  	console.log("-----------------")
	  }
	});
}
