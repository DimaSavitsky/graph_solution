window.onload = function () {

  var chart = c3.generate({
    bindto: '#chart',
    data: {
      columns: [
        ['data1', 30, 200, 100, 200, 150, 250],
        ['data2', 50, 220, 90, 160, 143, 200]
      ]
    },
    zoom: {
      enabled: true
    }
  });

  $("button#data1").on('click', function() {
    chart.toggle(['data1']);
    $(this).toggleClass( "btn-success" );
  });

  $("button#data2").on('click', function() {
    chart.toggle(['data2']);
    $(this).toggleClass( "btn-success" );
  });

};
