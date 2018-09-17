var Chart = require('chart.js');
var ctx = document.getElementById('myChart').getContext('2d');
var myRadarChart = new Chart(ctx, {
    type: 'radar',
    data: {
      labels: gon.themes,
      datasets: [
      {
        label: "Themes",
        // backgroundColor: 'rgba(00, 255, 00, 0.1)',
        // borderColor: '#00FF00',
        // borderWidth: 2,
        data: gon.values
      }
    ]
  }
});
