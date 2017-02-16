$(document).ready(function() {
	console.log('index working');
	signUpChartAjax()
	// buildSignUpChart()
})

function signUpChartAjax() {
	var request = $.ajax({
	  url: '/api/v1/sign_up_chart',
	  method: 'GET',
	  dataType: 'json',
	  success: function(data) {
	  	console.log("-----------------")
	  	parseChartData(data)
	  	console.log("-----------------")
	  }
	});
}

function parseChartData(data) {
	var chartData = {
		labels: [],
		datasets: [{
			label: "DATE",
			data: [],
			backgroundColor: ['rgb(211,211,211)'],
			borderColor: ['rgb(169,169,169)'],
			borderWidth: 1
		}]
	}	
	for(key in data) {
		chartData['labels'].push(key)
		chartData['datasets'][0]['data'].push(data[key])
	}

	buildChart(chartData);
}

function buildChart(chartData) {
	var ctx = $('#signUpChart');

	var signUpChart = new Chart(ctx, {
		type: 'bar',
		data: chartData,
		options: {
      scales: {
      	xAxes: [{
      		categorySpacing: 0
      	}],
        yAxes: [{
          ticks: {
            beginAtZero:true
          }
        }]
      }
    }
	})
}
