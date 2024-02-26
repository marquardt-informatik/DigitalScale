var timerObject;

function SetValue(value, uom) {
    let SSD = new SevenSegmentDisplay("SVGSSD");
    SSD.Value = value;
    SSD.Unit = uom;
}

function SetNumberOfDigits(value) {
    let SSD = new SevenSegmentDisplay("SVGSSD");
    SSD.NumberOfDigits = value;
}

function SetDecimalPlaces(value) {
    let SSD = new SevenSegmentDisplay("SVGSSD");
    SSD.NumberOfDecimalPlaces = value;
}

function Render(html) {
    HTMLContainer.insertAdjacentHTML('beforeend', html);
}

function StartTimer(milliSeconds) {
    timerObject = window.setInterval(TimerAction, milliSeconds);
}

function stopTimer() {
    clearInterval(timerObject);
}

function TimerAction() {
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod(
        "RefreshPage",
        arguments,
        false,
        () => {
            // Invoking the AL trigger has completed, invoke
            // the AL trigger again in 10 seconds
            window.setInterval(() => {
                TimerAction();
            },
                milliSeconds);
        },
        () => { /* error handling and perhaps retrying */ });
}