window.onload = function () {

  var chart = c3.generate({
    bindto: '#chart',
    data: {

      url: '/data',
      mimeType: 'json'

/*      columns: [
        ['data1', 30, 200, 100, 200, 150, 250],
        ['data2', 50, 220, 90, 160, 143, 200]
      ]*/
    },
    zoom: {
      enabled: true
    }
  });

};
