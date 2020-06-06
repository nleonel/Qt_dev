import QtQuick 2.4

HeatingForm {
    dial1.onValueChanged: {
        dial1.value=convertFloaToInt(dial1.value);
}
    dial2.onValueChanged: {
        dial2.value=convertFloaToInt(dial2.value);
}
    dial3.onValueChanged: {
        dial3.value=convertFloaToInt(dial3.value);
}
    dial.onValueChanged: {
        dial.value=convertFloaToInt(dial.value);
}


    function convertFloaToInt(val) {
        return Math.round(val);
        }
}

