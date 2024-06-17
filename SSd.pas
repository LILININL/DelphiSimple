unit SSd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    procedure ButtonCalculateClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonCalculateClick(Sender: TObject);
var
  Score: Integer;
  Grade: string;
begin
  // แปลงคะแนนจาก TEdit เป็นจำนวนเต็ม
  Score := StrToInt(EditScore.Text);

  // คำนวณเกรดตามคะแนนที่ได้รับ
  if (Score >= 80) and (Score <= 100) then
    Grade := 'A'
  else if (Score >= 75) and (Score <= 79) then
    Grade := 'B+'
  else if (Score >= 70) and (Score <= 74) then
    Grade := 'B'
  else if (Score >= 65) and (Score <= 69) then
    Grade := 'C+'
  else if (Score >= 60) and (Score <= 64) then
    Grade := 'C'
  else if (Score >= 55) and (Score <= 59) then
    Grade := 'D+'
  else if (Score >= 50) and (Score <= 54) then
    Grade := 'D'
  else
    Grade := 'F';

  // แสดงผลลัพธ์เกรดใน Label
  LabelResult.Caption := 'เกรด: ' + Grade;
end;

end.

