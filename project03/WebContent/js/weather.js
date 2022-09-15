jQuery(document).ready(function(){
	/* 날씨 - weather API 이용 */
		/* 오늘 날씨 */
	$.getJSON('http://api.openweathermap.org/data/2.5/find?q=Anyang-si&units=metric&appid=be13214d3eff875a55ea31517a67cea6', function(todayData){
		var todayMinTemp = todayData.list[0].main.temp_min;
		var todayMaxTemp = todayData.list[0].main.temp_max;
		var todayTemp = todayData.list[0].main.temp;
		var todayFeelTemp = todayData.list[0].main.feels_like;
		var todayHumidity = todayData.list[0].main.humidity
		var todayDateTime = new Date();
		var todayMonth = todayDateTime.getMonth()+1;
		var todayDay = todayDateTime.getDate();
		var todayHour = todayDateTime.getHours();
		var todayMinute = todayDateTime.getMinutes();
		var todayWeatherIcon = todayData.list[0].weather[0].icon;
		var todayWeatherText = todayData.list[0].weather[0].main;
		$('.todayTempText').html(todayTemp + '&#8451;');
		$('.todayMinTempText').html('최저 '+todayMinTemp+'&#8451;');
		$('.todayMaxTempText').html('최고 '+todayMaxTemp+'&#8451;');
		$('.todayFeelTempText').html('체감 '+todayFeelTemp+'&#8451;');
		$('.todayHumidityText').html('습도 '+todayHumidity+'%');
		$('.todayDateText').text(todayMonth+'월 '+todayDay+'일 '+todayHour+'시 '+todayMinute+'분');
		if(todayWeatherIcon == '01d' || todayWeatherIcon == '01n' || todayWeatherIcon == '02d' || todayWeatherIcon == '02n' || todayWeatherIcon == '03d' || todayWeatherIcon == '03n' || todayWeatherIcon == '04d' || todayWeatherIcon == '04n' || todayWeatherIcon == '09d' || todayWeatherIcon == '09n' || todayWeatherIcon == '10d' || todayWeatherIcon == '10n' ||todayWeatherIcon == '11d' || todayWeatherIcon == '11n' || todayWeatherIcon == '13d' || todayWeatherIcon == '13n' || todayWeatherIcon == '50d' || todayWeatherIcon == '50n'){
			$('.todayWeatherIcon').attr('src','images/weather/'+todayWeatherIcon+'.png');
		}else {
			$('.todayWeatherIcon').attr('src','images/weather/01d.png');
		};

		if(todayWeatherText == 'Rain'){
			$('.todayWeather').css({'background':'url(images/weather/rain_bg.png)'});
		}else if(todayWeatherText == 'Clear'){
			$('.todayWeather').css('background','url(images/weather/clear_bg.png)');
		}else if(todayWeatherText == 'Clouds'){
			$('.todayWeather').css('background','url(images/weather/clouds_bg.png)');
		}else if(todayWeatherText == 'Thunderstorm' || todayWeatherText == 'Tornado' || todayWeatherText == 'Squall'){
			$('.todayWeather').css('background','url(images/weather/thunderstorm_bg.png)');
		}else if(todayWeatherText == 'Snow'){
			$('.todayWeather').css('background','url(images/weather/snow_bg.png)');
		}else if(todayWeatherText == 'Smoke' || todayWeatherText == 'Haze' || todayWeatherText == 'Dust' || todayWeatherText == 'Sand' || todayWeatherText == 'Ash' || todayWeatherText == 'Atmosphere' || todayWeatherText == 'Mist' || todayWeatherText == 'Fog'){
			$('.todayWeather').css('background','url(images/weather/atmosphere_bg.png)');
		} else {
			$('.todayWeather').css('background','url(images/weather/clear_bg.png)');
		};
	});			
});
