// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function(){
  var url =  "http://api.openweathermap.org/data/2.5/forecast?q=Seattle,us&mode=json";

  $.getJSON( url, null, function(data) {
    processData(data);
  });
});


function processData(weatherData) {
  if( weatherData !== undefined && weatherData !== null) {
    console.log(weatherData.list);

    for (i = 0; i < weatherData.list.length; i++) {
      weatherData.list[i].dt_txt
    }


    console.log((weatherData.list[0].dt_txt));
    console.log((weatherData.list[0].main.temp_max));
    console.log((weatherData.list[0].main.temp_min));
    // console.log((weatherData.list[0].rain.3h));
    console.log((weatherData.list[0].weather[0].main));
    console.log((weatherData.list[0].weather[0].description));
    console.log(weatherData.city.name);
    console.log(weatherData.list[2].dt_txt);

    // console.log(Date.toLocaleFormat(weatherData.list[3].dt));
    var allWeather = weatherData.list[0].dt;
    console.log("Datetime?");
    console.log(allWeather);

    console.log(Date(weatherData.list[3].dt_txt));
    var allWeather = weatherData.list[0];

    var main = weatherData.list;
    // this is working?
    console.log(new Date(weatherData.list[0].dt_txt).toLocaleString());

    // var hourbyhourdata = for (i=0; i<9; i++) {
    //                         weatherData.list[i].dt_txt, weatherData.list[i]
    //
    //                       }

    $('#weatherinfo').html(
      '<h3>' + allWeather.main + '</h3>' +
      allWeather.description +
      main.temp + main.humidity
      );


  }
}
