var timerObject;

function SetValue(value) {
    let SSD = new SevenSegmentDisplay("SVGSSD");
    SSD.Value = value;
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
    Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('RefreshPage');
}