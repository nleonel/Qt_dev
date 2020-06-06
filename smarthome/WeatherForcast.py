# This Python file uses the following encoding: utf-8
from PySide2 import QtWidgets
import requests, json
import datetime
from datetime import datetime
from datetime import *
import pytz
from PySide2.QtCore import QObject, Slot

class WeatherForcast:
    def __init__(self):
        # Enter your API key here
        api_key = "cbfccb4e4cb9ff8047938a89b5c41723"

        # base_url variable to store url
        base_url = "http://api.openweathermap.org/data/2.5/weather?"

    def getUrl(self):
        # Give city name
        city_name = input("Enter city name : ")
        # complete_url variable to store complete url address
        complete_url = base_url + "appid=" + api_key + "&q=" + city_name

        # get method of requests module return response object
    def getResponse(self):
        response = requests.get(complete_url)
        # json method of response object  convert json format data into python format data
        x = response.json()

        # Now x contains list of nested dictionaries Check the value of "cod" key is equal to "404", means city is found otherwise, city is not found
        if x["cod"] != "404":

            # store the value of "main"  key in variable y
            y = x["main"]

            # store the value corresponding to the "temp" key of y
            current_temperature = y["temp"]

            # store the value corresponding to the "pressure" key of y
            current_pressure = y["pressure"]

            # store the value corresponding to the "humidity" key of y
            current_humidiy = y["humidity"]

            # store the value of "weather" key in variable z
            z = x["weather"]

            # store the value corresponding  to the "description" key at  the 0th index of z
            weather_description = z[0]["description"]

            # print following values
            print(" Temperature (in kelvin unit) = " +
                            str(current_temperature) + "\n atmospheric pressure (in hPa unit) = " +
                            str(current_pressure) + "\n humidity (in percentage) = " +
                            str(current_humidiy) + "\n description = " +
                            str(weather_description))

        else:
            print(" City Not Found ")

class Time(QObject):

    @Slot(str, result=str)
    def getCurrentDate(self):

        # using now() to get current time
        current_date = datetime.datetime.now()
        print("Year : ", end = "")
        print(current_date.year)
        date.year=current_date.year
        date.month=current_date.month
        date.day=current_date.day
        return date

    @Slot(str, result=str)
    def getTime(self):
        tz_Rome = pytz.timezone('Europe/Rome')
        datetime_Rome = datetime.now(tz_Rome)
        return datetime_Rome.strftime("%H:%M:%S")
        #print("INDIA time:", datetime_INDIA.strftime("%H:%M:%S"))
