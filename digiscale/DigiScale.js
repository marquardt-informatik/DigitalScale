

function SetValue(value) {
    let SSD = new SevenSegmentDisplay("SVGSSD");
    SSD.Value = value;    
}

function SetNumberOfDigits(value) {
    SSD.NumberOfDigits = value;
}

function SetDecimalPlaces(value) {
    SSD.NumberOfDecimalPlaces = value;
}

function Render(html)
{
    HTMLContainer.insertAdjacentHTML('beforeend',html);
}