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
                    DigitalScaleValue := 1234.56;
                    CurrPage.DigitalScaleDisplay.SetValue(DigitalScaleValue);
                end;
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(UpdateDigitalScaleValue)
            {
                ApplicationArea = All;
                Caption = 'Update Digital Scale';
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                Image = Calculate;

                trigger OnAction();
                var
                    i: integer;
                begin
                    DigitalScaleValue += Random(100) * 0.1;
                    CurrPage.DigitalScaleDisplay.SetValue(DigitalScaleValue);
                end;
            }
        }
    }
    var
        DigitalScaleValue: decimal;
}

