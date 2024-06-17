unit SettingForm1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, llp, IdHash, IdHashMessageDigest;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    AboutMe1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    s5551: TMenuItem;
    N551: TMenuItem;
    N221: TMenuItem;
    SettingForm11: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    Label1: TLabel;
    Label2: TLabel;
    procedure AboutMe1Click(Sender: TObject);
    procedure SettingForm11Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
    function HashPassword(const Password: string): string;
  public
    { Public declarations }
    ID: string;
    Password: string;
  end;

var
  Form1: TForm1;

implementation

const
  ValidID = 'aaaa';
  ValidPasswordHash = '81dc9bdb52d04dc20036dbd8313ed055'; // hash �ͧ '1234'

{$R *.dfm}

procedure TForm1.AboutMe1Click(Sender: TObject);
begin
  // ��Ѻʶҹ� Checked �ͧ TMenuItem
  AboutMe1.Checked := not AboutMe1.Checked;
  if AboutMe1.Checked then
    ShowMessage('Password: ' + Edit2.Text)
  else
    ShowMessage('bb');

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Edit1.Text;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  Edit2.PasswordChar := '�';
end;

function TForm1.HashPassword(const Password: string): string;
var
  HashMD5: TIdHashMessageDigest5;
begin
  HashMD5 := TIdHashMessageDigest5.Create;
  try
    Result := HashMD5.HashStringAsHex(Trim(Password));
  finally
    HashMD5.Free;
  end;
end;

procedure TForm1.SettingForm11Click(Sender: TObject);
var
  EnteredPasswordHash: string;
begin
  EnteredPasswordHash := LowerCase(HashPassword(Edit2.Text));

  // �ʴ���� Hash �ͧ���ʼ�ҹ����͹��������͡�õ�Ǩ�ͺ
  ShowMessage('Entered Hash: ' + EnteredPasswordHash);

  if (Edit1.Text = ValidID) and
    (EnteredPasswordHash = LowerCase(ValidPasswordHash)) then
  begin
    // �纤�Ҩҡ Edit1 ��� Edit2
    ID := Edit1.Text;
    Password := Edit2.Text;

    ShowMessage('ID: ' + Edit1.Text + sLineBreak + 'Pass: ' + Edit2.Text);

    // �ʴ���ͤ�������ͤ�ԡ������� SettingForm11
    ShowMessage('Login secccesfuly');
    // ���ҧ����ʴ����������ҡ�ٹԵ llp
    FormProfile := TFormProfile.Create(Application);
    FormProfile.IDLable.Caption := 'ID: ' + ID;
    FormProfile.Password.Caption := 'Password: ' + Password;
    FormProfile.ShowModal;
  end
  else
  begin
    ShowMessage('Invalid ID or Password');
  end;
end;

end.
