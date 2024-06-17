unit llp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormProfile = class(TForm)
    IDLable: TLabel;
    Password: TLabel;
    EditMemo: TMemo;
    ComSavememo: TMemo;
    ClearMemo: TButton;
    SaveMemo: TButton;
    ConvB: TButton;
    procedure EditMemoChange(Sender: TObject);
    procedure ComSavememoChange(Sender: TObject);
    procedure ClearMemoClick(Sender: TObject);
    procedure SaveMemoClick(Sender: TObject);
    procedure ConvBClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormProfile: TFormProfile;

implementation

{$R *.dfm}

procedure TFormProfile.SaveMemoClick(Sender: TObject);
begin
  if ComSavememo.Lines.Text <> '' then
  begin
    // �ʴ���ͻ�Ѿ��������
    if MessageDlg('�кѹ�֡�պ��ͤ���������?', mtConfirmation, [mbYes, mbNo],
      0) = mrYes then
    begin
      ComSavememo.Lines.Text := EditMemo.Lines.Text;
      ShowMessage('Save EditMemo to ComsaveMemo!');
      EditMemo.Lines.Clear;
    end;
  end
  else
  begin
    ComSavememo.Lines.Text := EditMemo.Lines.Text;
    ShowMessage('Save EditMemo to ComsaveMemo!');
    EditMemo.Lines.Clear;
  end;
end;

procedure TFormProfile.ClearMemoClick(Sender: TObject);
begin
  ComSavememo.Clear;
end;

procedure TFormProfile.ComSavememoChange(Sender: TObject);
begin
  ComSavememo.Lines.Text;
end;

procedure TFormProfile.ConvBClick(Sender: TObject);
var
  TempText: string;
begin
  TempText := ComSavememo.Lines.Text;
  // �红�ͤ����ҡ ComSaveMemo 㹵���� TempText
  ComSavememo.Lines.Text := EditMemo.Lines.Text;
  // �Ӣ�ͤ����ҡ EditMemo ����� ComSaveMemo
  EditMemo.Lines.Text := TempText;
  // �Ӣ�ͤ����ҡ����� TempText ����� EditMemo
end;

procedure TFormProfile.EditMemoChange(Sender: TObject);
begin
  EditMemo.Lines.Text;

end;

end.
