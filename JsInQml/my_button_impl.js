// this state is separate for each instance of MyButton
var clickCount = 0;

function onClicked(obj) {
    clickCount += 1;
    if ((clickCount % 5) == 0) {
        obj.color = Qt.rgba(1,0,0,1);
    } else {
        obj.color = Qt.rgba(0,1,0,1);
    }

    return clickCount;
}

function changeBackgroundColor() {
    main.backgroundColor = "green"
}

