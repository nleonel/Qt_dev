#!/usr/bin/env python

# This Python file uses the following encoding: utf-8
import sys , os
import json
import urllib
import urllib.request
import PySide2
from PySide2.QtWidgets import QApplication
import PySide2.QtQml
from PySide2.QtQuick import QQuickView
from PySide2.QtCore import QStringListModel, Qt, QUrl
from PySide2.QtGui import QGuiApplication
from PySide2.QtQml import QQmlApplicationEngine
from PySide2.QtCore import QObject, Slot

from os.path import abspath, dirname, join
from WeatherForcast import Time


class Bridge(QObject):

    @Slot(str, result=str)
    def getColor(self, color_name):
        if color_name.lower() == "red":
            return "#ef9a9a"
        elif color_name.lower() == "green":
            return "#a5d6a7"
        elif color_name.lower() == "blue":
            return "#90caf9"
        else:
            return "white"

    @Slot(float, result=int)
    def getSize(self, s):
        size = int(s * 42) # Maximum font size
        if size <= 0:
            return 1
        else:
            return size

    @Slot(str, result=bool)
    def getItalic(self, s):
        if s.lower() == "italic":
            return True
        else:
            return False

    @Slot(str, result=bool)
    def getBold(self, s):
        if s.lower() == "bold":
            return True
        else:
            return False

    @Slot(str, result=bool)
    def getUnderline(self, s):
        if s.lower() == "underline":
            return True
        else:
            return False

if __name__ == "__main__":
    #app = QApplication([])
    # ...
    #get our data
    '''
    url = "http://country.io/names.json"
    response = urllib.request.urlopen(url)
    data = json.loads(response.read().decode('utf-8'))

    #Format and sort the data
    data_list = list(data.values())
    data_list.sort()
    '''
    data_list = "Test"

    #gui = QGuiApplication(sys.argv)
    #view = QQuickView()
    #view.setResizeMode(QQuickView.SizeRootObjectToView)

    #Expose the list to the Qml code
    #my_model = QStringListModel()
    #my_model.setStringList(data_list)

    #view.rootContext().setContextProperty("myModel",my_model)
    #Load the QML file
    #qml_file = os.path.join(os.path.dirname(__file__),"main.qml")

    #view.setSource(QUrl.fromLocalFile(os.path.abspath(qml_file)))
    #Show the window

    #view.show()
    #sys.exit(app.exec_())
    #execute and cleanup
    #gui.exec_()
    #del view

    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # Instance of the Python object

    time = Time()
    print(time.getTime())
    bridge = Bridge()


    # Expose the Python object to QML
    context = engine.rootContext()
    context.setContextProperty("con", bridge)
    context.setContextProperty("tim", time)

    # Get the path of the current directory, and then add the name
    # of the QML file, to load it.
    qmlFile = join(dirname(__file__), 'main.qml')
    engine.load(abspath(qmlFile))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(app.exec_())
