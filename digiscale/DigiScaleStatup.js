HTMLContainer = document.getElementById("controlAddIn");
Render('<svg id="SVGSSD" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"></svg>');

let SSD = new SevenSegmentDisplay("SVGSSD");

Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnControlAddInReady', []);