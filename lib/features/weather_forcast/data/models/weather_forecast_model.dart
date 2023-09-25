import 'package:weather_app/features/weather_forcast/domain/entities/weather_forecast_entity.dart';

class WeatherForecastModel extends WeatherForecastEntity {
  const WeatherForecastModel({
    required super.longitude,
    required super.latitude,
    required super.generatedTimeMs,
    required super.utcOffsetSeconds,
    required super.timeZone,
    required super.timeZoneAbr,
    required super.elevation,
    required super.currentWether,
    required super.weatherParamUnits,
    required super.hourlyData,
  });
}

class HourlyForcastDataModel extends HourlyForcastData {
  const HourlyForcastDataModel({
    required super.time,
    required super.temperature,
    required super.precipitation,
    required super.rain,
    required super.showers,
  });

  factory HourlyForcastDataModel.fromJson(Map<String, dynamic> json) {
    return HourlyForcastDataModel(
        time: json['time'],
        temperature: json['temperature_2m'],
        precipitation: json['precipitation'],
        rain: json['rain'],
        showers: json['showers']);
  }
}

class WeatherParamUnitsModel extends WeatherParamUnits {
  const WeatherParamUnitsModel({
    required super.temperature,
    required super.precipitation,
    required super.rain,
    required super.showers,
  });

  factory WeatherParamUnitsModel.fromJson(Map<String, dynamic> json) {
    return WeatherParamUnitsModel(
      temperature: json['temperature_2m'],
      precipitation: json['precipitation'],
      rain: json['rain'],
      showers: json['showers'],
    );
  }
}

class CurrentWeatherModel extends CurrentWeather {
  const CurrentWeatherModel({
    required super.temperature,
    required super.windspeed,
    required super.windDirection,
    required super.weatherCode,
    required super.isDay,
    required super.time,
  });
  factory CurrentWeatherModel.fromJson(Map<String, dynamic> json) {
    return CurrentWeatherModel(
      temperature: json['temperature'],
      windspeed: json['windspeed'],
      windDirection: json['winddirection'],
      weatherCode: json['weathercode'],
      isDay: json['is_day'],
      time: json['time'],
    );
  }
}
