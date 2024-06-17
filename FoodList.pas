unit FoodList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Generics.Defaults, Generics.Collections;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    MenuG: TGroupBox;
    Task: TGroupBox;
    Splitter2: TSplitter;
    FoodList: TListBox;
    AddBt: TBitBtn;
    DeleteBt: TBitBtn;
    ClearBt: TBitBtn;
    SaveBt: TBitBtn;
    CloseBt: TBitBtn;
    Splitter1: TSplitter;
    MenuCount: TLabel;
    Label1: TLabel;
    LodeMenu: TButton;
    ReMenu: TButton;
    EditMenu: TButton;
    procedure AddBtClick(Sender: TObject);
    procedure CloseBtClick(Sender: TObject);
    procedure DeleteBtClick(Sender: TObject);
    procedure ClearBtClick(Sender: TObject);
    procedure SaveBtClick(Sender: TObject);
    procedure LodeMenuClick(Sender: TObject);
    procedure ReMenuClick(Sender: TObject);
    procedure EditMenuClick(Sender: TObject);

  private
    FileStream: TFileStream;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.AddBtClick(Sender: TObject);
var
  S: String;
begin
  if InputQuery('เพิ่มเมนูอาหาร', 'ชื่อเมนู', S) then
  begin
    if Trim(S) <> '' then
    begin
      FoodList.Items.Add(S);
      ShowMessage('Add Success!');
    end
    else
    begin
      ShowMessage('Cannot add an empty menu item.');
    end;
  end;
  MenuCount.caption := InttoStr(FoodList.Items.Count);
end;

procedure TMainForm.ClearBtClick(Sender: TObject);
begin
  begin
    FoodList.Items.Clear;
    ShowMessage('Clear Secces!');
  end;
  MenuCount.caption := InttoStr(FoodList.Items.Count);
end;

procedure TMainForm.CloseBtClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.DeleteBtClick(Sender: TObject);

begin
  if FoodList.ItemIndex > -1 then
  begin
    FoodList.Items.Delete(FoodList.ItemIndex);
    ShowMessage('Delete Secces!');
  end
  else
  begin
    ShowMessage('No item selected to delete.');
  end;
  MenuCount.caption := InttoStr(FoodList.Items.Count);
end;

procedure TMainForm.EditMenuClick(Sender: TObject);
var
  S: String;
begin
  if FoodList.ItemIndex > -1 then
  begin
    S := FoodList.Items[FoodList.ItemIndex];
    if InputQuery('แก้ไข', 'ชื่อเมนู', S) then
    begin
      FoodList.Items[FoodList.ItemIndex] := S;
    end;
  end
  else
  begin
    ShowMessage('No item selected to Edit!');
  end;
end;

procedure TMainForm.LodeMenuClick(Sender: TObject);
var
  FileStream: TFileStream;
begin
  if not FileExists('D:\foodlist.txt') or
    not FileExists('D:\foodlist_stream.txt') then
  begin
    ShowMessage
      ('Required file(s) not found. Please save the files first before loading.');
    Exit;
  end;

  // โหลดข้อมูลจากไฟล์
  FoodList.Items.LoadFromFile('D:\foodlist.txt');

  // โหลดข้อมูลจากสตรีม
  FileStream := TFileStream.Create('D:\foodlist_stream.txt', fmOpenRead);
  try
    FoodList.Items.LoadFromStream(FileStream);
  finally
    FileStream.Free;
  end;

  ShowMessage('Load Success!');
end;

procedure TMainForm.ReMenuClick(Sender: TObject);
var
  List: TStringList;

  function CompareStrings(List: TStringList; Index1, Index2: Integer): Integer;
  begin
    Result := CompareText(List[Index1], List[Index2]);
  end;

begin
  List := TStringList.Create;
  try
    List.Assign(FoodList.Items);
    List.CustomSort(@CompareStrings);
    FoodList.Items.Assign(List);
  finally
    List.Free;
  end;
end;

procedure TMainForm.SaveBtClick(Sender: TObject);
var
  FileStream: TFileStream;
begin
  if FoodList.Items.Count = 0 then
  begin
    ShowMessage('FoodList is empty. Please add items before saving.');
    Exit;
  end;

  // บันทึกข้อมูลลงในไฟล์
  FoodList.Items.SaveToFile('D:\foodlist.txt');
  ShowMessage('Save Success!');

  // บันทึกข้อมูลลงในสตรีม
  FileStream := TFileStream.Create('D:\foodlist_stream.txt', fmCreate);
  try
    FoodList.Items.SaveToStream(FileStream);
  finally
    FileStream.Free;
  end;
end;

end.
