/// <summary>
/// Codeunit Digital Scale Receipient (ID 50100).
/// </summary>
codeunit 50100 "Digital Scale Functions"
{
    trigger OnRun()
    begin
    end;

    /// <summary>
    /// Ping.
    /// </summary>
    /// <returns>Return value of type Text.</returns>
    procedure Ping(): Text
    begin
        exit('Pong');
    end;

    /// <summary>
    /// SetWeight.
    /// </summary>
    /// <param name="weight">text.</param>
    procedure SetWeight(weight: text)
    begin
        IsolatedStorage.Set('DigitalScaleValue', weight);
    end;
}
