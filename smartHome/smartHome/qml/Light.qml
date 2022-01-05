import QtQuick 2.4
import Ionicon 1.0

LightForm {
    btn.onClicked: {
        myGlobalObject.m_onOff = 2;
}
    label1.onTextChanged: {
        if(label1.text === "Closed"){
            myGlobalObject.m_onOff = 0;
        }else if((label1.text === "Open")){
             myGlobalObject.m_onOff = 1;
        }else{
            myGlobalObject.m_onOff = 2;
        }
}
    dial.onValueChanged: {
        dial.value=Math.ceil(dial.value);
    }

}
