unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, SimpForm;

type
  TFormTest1 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject); // กำหนดเหตุการณ์คลิกปุ่ม
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTest1: TFormTest1;

implementation

uses Unit3;

{$R *.dfm}

procedure TFormTest1.FormCreate(Sender: TObject);
begin
  // เชื่อมต่อเหตุการณ์ OnClick กับเมธอด SpeedButton1Click
  SpeedButton1.OnClick := SpeedButton1Click;
end;

procedure TFormTest1.SpeedButton1Click(Sender: TObject);
begin
Form2.Show; // แสดงฟอร์ม TForm2 แบบ Modal
end;

procedure TFormTest1.SpeedButton2Click(Sender: TObject);
begin
 Formtree.show;
end;

end.

