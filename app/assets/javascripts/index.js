$(document).ready(function() {
	signUpChartAjax()

	// -----------------------------
	// Ajax GET request to namespaced API/v1/sign_up_chart
	function signUpChartAjax() {
		var request = $.ajax({
		  url: '/api/v1/sign_up_chart',
		  method: 'GET',
		  dataType: 'json',
		  success: function(data) {
		  	parseChartData(data)
		  }
		});
	}

	// Parses JSON response data from AJAX call
	function parseChartData(data) {
		var chartData = {
			labels: [],
			datasets: [{
				label: "# Sign Ups",
				data: [],
				backgroundColor: ['rgb(211,211,211)'],
				borderColor: ['rgb(169,169,169)'],
				borderWidth: 1
			}]
		}
		
		// Fill chartData['labels'] array with each day (string format) 
		// Fill chartData['datasets'][0]['data'] with the # of sign ups
		for(key in data) {
			chartData['labels'].push(key)
			chartData['datasets'][0]['data'].push(data[key])
		}

		// Execute buildChart
		buildChart(chartData);
	}

	// Create bar chart using chartjs
	function buildChart(chartData) {
		var ctx = document.getElementById('signUpChart');
		var signUpChart = new Chart(ctx, {
			type: 'bar',
			data: chartData,
			options: {
				maintainAspectRatio: true,
				responsive: false,
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
		});
	}
});

