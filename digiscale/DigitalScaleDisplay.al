/// <summary>
/// ControlAddIn DigitalScaleDisplay.
/// </summary>
controladdin DigitalScaleDisplay
{
    Scripts = 'digiscale/DigiScale.js', 'digiscale/seven_segment_display.js', 'digiscale/seven_segment_display_page.js';
    StartupScript = 'digiscale/DigiScaleStatup.js';
    StyleSheets = 'digiscale/DigiScale.css';
    VerticalStretch = true;
    HorizontalStretch = true;

    /// <summary>
    /// OnControlAddInReady.
    /// </summary>
    event OnControlAddInReady();
    event RefreshPage();

    procedure SetValue(Value: Decimal; UnitOfMeasure: Text);
    procedure SetNumberOfDigits(Digits: Integer);
    procedure SetDecimalPlaces(DecimalPlaces: Integer);
    procedure Render(HTML: Text);

    procedure StartTimer(milliSeconds: Integer);
    procedure StopTimer();
}
