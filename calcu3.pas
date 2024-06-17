unit calcu3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Group1: TGroupBox;
    Group2: TGroupBox;
    FuntionList: TListBox;
    LabelFuntion: TLabel;
    sum1: TEdit;
    delete1: TEdit;
    kun1: TEdit;
    hun1: TEdit;
    mod1: TEdit;
    sum2: TEdit;
    delete2: TEdit;
    kun2: TEdit;
    hun2: TEdit;
    mod2: TEdit;
    sum3: TEdit;
    delete3: TEdit;
    kun3: TEdit;
    hun3: TEdit;
    mod3: TEdit;
    bsum: TButton;
    bdelete: TButton;
    bkun: TButton;
    bhun: TButton;
    bmod: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Sumver1: TEdit;
    Sumver2: TEdit;
    Operator1: TComboBox;
    Sumver3: TEdit;
    Bsumver: TButton;
    Label11: TLabel;
    Label12: TLabel;
    procedure CalculateResult(Sender: TObject);
    procedure BsumverClick(Sender: TObject);

  private
    { Private declarations }
    function GetIntFromEdit(Edit: TEdit): Integer;
    procedure SetResultToEdit(Edit: TEdit; Value: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.GetIntFromEdit(Edit: TEdit): Integer;
begin
  Result := StrToIntDef(Edit.Text, 0);
end;

procedure TForm1.SetResultToEdit(Edit: TEdit; Value: Integer);
begin
  Edit.Text := IntToStr(Value);
end;

procedure TForm1.BsumverClick(Sender: TObject);
var
  a1, a2, a3: Double;
begin
  a1 := StrToFloat(Sumver1.Text); // แปลงข้อความเป็นจำนวนจริง
  a2 := StrToFloat(Sumver2.Text); // แปลงข้อความเป็นจำนวนจริง

  if Operator1.Text = '+' then
  begin
    a3 := a1 + a2; // การบวก
  end
  else if Operator1.Text = '-' then
  begin
    a3 := a1 - a2; // การลบ
  end
  else if Operator1.Text = '*' then
  begin
    a3 := a1 * a2; // การคูณ
  end
  else if Operator1.Text = '/' then
  begin
    if a2 <> 0 then
      a3 := a1 / a2 // การหาร
    else
    begin
      ShowMessage('ไม่สามารถใส่ 0 ได้นะ!');
      Exit;
    end;
  end
  else if Operator1.Text = 'mod' then
  begin
    ShowMessage('ไม่รองรับ! ติดต่อผู้สร้างโลก');
    Exit;
  end
  else
  begin
    ShowMessage('กรุณากดเลือก Operator');
    Exit;
  end;

  Sumver3.Text := FloatToStr(a3); // แสดงผลลัพธ์ใน Sumver3
end;

procedure TForm1.CalculateResult(Sender: TObject);
var
  Operand1, Operand2, Result: Integer;
  Edit1, Edit2, EditResult: TEdit;
begin
  if Sender = bhun then
  begin
    Edit1 := hun1;
    Edit2 := hun2;
    EditResult := hun3;
    Result := GetIntFromEdit(Edit1) div GetIntFromEdit(Edit2);
  end
  else if Sender = bkun then
  begin
    Edit1 := kun1;
    Edit2 := kun2;
    EditResult := kun3;
    Result := GetIntFromEdit(Edit1) * GetIntFromEdit(Edit2);
  end
  else if Sender = bmod then
  begin
    Edit1 := mod1;
    Edit2 := mod2;
    EditResult := mod3;
    Result := GetIntFromEdit(Edit1) mod GetIntFromEdit(Edit2);
  end
  else if Sender = bdelete then
  begin
    Edit1 := delete1;
    Edit2 := delete2;
    EditResult := delete3;
    Result := GetIntFromEdit(Edit1) - GetIntFromEdit(Edit2);
  end
  else if Sender = bsum then
  begin
    Edit1 := sum1;
    Edit2 := sum2;
    EditResult := sum3;
    Result := GetIntFromEdit(Edit1) + GetIntFromEdit(Edit2);
  end
  else
    Exit;

  SetResultToEdit(EditResult, Result);
end;

end.
