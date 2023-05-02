readings.csv - Hourly interval data for 5 houses
mid: meter id
ts: timestamp of reading
value: consumption reading at the interval. Note that this field is a scaled integer to avoid rounding errors during calculations thus it will need to be divided by 1 million after all calculations in order to get actual usage in kWh.

weather.csv - Hourly weather data
ts: timestamp of reading
temperature: temperature in centigrade
dew_point: dew point temperature
rel_humidity: relative humidity
wind_dir: wind direction
wind_speed: wind speed
visibility: visibility
stn_pressure: station pressure
humidex: humidity index (applies in hot weather)
wind_chill: wind chill (applies in cold weather)
notes: notes