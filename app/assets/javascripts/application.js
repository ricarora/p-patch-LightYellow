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
  var url =  "http://api.openweathermap.org/data/2.5/weather?q=Seattle,us";

  $.getJSON( url, null, function(data) {
    processData(data);
  });
});

function processData(weatherData) {
  if( weatherData !== undefined && weatherData !== null) {
    console.log(weatherData.weather[0]);
    var allWeather = weatherData.weather[0];
    var main = weatherData.main;
    console.log(weatherData.main);

    $('#weatherinfo').html(
      '<h3>' + allWeather.main + '</h3>' +
      allWeather.description +
      main.temp + main.humidity
      );


  }
}
