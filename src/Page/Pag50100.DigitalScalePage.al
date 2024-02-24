/// <summary>
/// Unknown IOI.
/// </summary>
namespace IOI.DigitalScale;

page 50100 DigitalScalePage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(content)
        {
            usercontrol(DigitalScaleDisplay; DigitalScaleDisplay)
            {
                ApplicationArea = All;
                trigger OnControlAddInReady();
                begin
                    CurrPage.DigitalScaleDisplay.StartTimer(TimerMiliseconds);
                end;

                trigger RefreshPage()
                var
                    DigitalScaleValueText: Text;
                begin
                    if IsolatedStorage.Get('DigitalScaleValue', DigitalScaleValueText) then
                        if Evaluate(DigitalScaleValue, DigitalScaleValueText) then;
                    StartMeasurement();
                end;
            }
        }
    }
    var
        DigitalScaleValue: decimal;
        TimerMiliseconds: Integer;

    trigger OnOpenPage()
    begin
        TimerMiliseconds := 200;
        DigitalScaleValue := 0.0;
    end;

    local procedure StartMeasurement()
    begin
        CurrPage.DigitalScaleDisplay.SetValue(DigitalScaleValue);
        //CurrPage.DigitalScaleDisplay.StartTimer(TimerMiliseconds);
    end;
}

