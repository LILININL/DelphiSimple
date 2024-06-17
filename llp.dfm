object FormProfile: TFormProfile
  Left = 0
  Top = 0
  Caption = 'ProflileForm'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object IDLable: TLabel
    Left = 16
    Top = 8
    Width = 33
    Height = 23
    Caption = 'ID :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Password: TLabel
    Left = 16
    Top = 37
    Width = 91
    Height = 23
    Caption = 'Password :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EditMemo: TMemo
    Left = 48
    Top = 88
    Width = 233
    Height = 177
    TabOrder = 0
    OnChange = EditMemoChange
  end
  object ComSavememo: TMemo
    Left = 368
    Top = 88
    Width = 233
    Height = 177
    ReadOnly = True
    TabOrder = 1
    OnChange = ComSavememoChange
  end
  object ClearMemo: TButton
    Left = 526
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 2
    OnClick = ClearMemoClick
  end
  object SaveMemo: TButton
    Left = 206
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Save'
    TabOrder = 3
    OnClick = SaveMemoClick
  end
  object ConvB: TButton
    Left = 287
    Top = 160
    Width = 75
    Height = 25
    Caption = #3649#3585#3657#3652#3586' Memo'
    TabOrder = 4
    OnClick = ConvBClick
  end
end
