object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'SettingForm1'
  ClientHeight = 241
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 95
    Top = 35
    Width = 27
    Height = 23
    Caption = 'ID:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 37
    Top = 83
    Width = 85
    Height = 23
    Caption = 'Password:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 35
    Width = 121
    Height = 21
    Hint = 'id Username'
    TabOrder = 0
    OnChange = Edit1Change
  end
  object Edit2: TEdit
    Left = 128
    Top = 80
    Width = 121
    Height = 21
    Hint = 'password'
    HelpType = htKeyword
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    TextHint = 'password'
    OnChange = Edit2Change
  end
  object Button1: TButton
    Left = 95
    Top = 151
    Width = 177
    Height = 66
    Caption = #3648#3586#3657#3634#3626#3641#3656#3619#3632#3610#3610
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = SettingForm11Click
  end
  object CheckBox1: TCheckBox
    Left = 128
    Top = 116
    Width = 97
    Height = 17
    Caption = #3592#3604#3592#3635#3593#3633#3609
    TabOrder = 3
    OnClick = AboutMe1Click
  end
  object MainMenu1: TMainMenu
    object MenuItem1: TMenuItem
      Caption = 'zxc'
      object AboutMe1: TMenuItem
        Caption = '13'
        OnClick = AboutMe1Click
      end
      object MenuItem2: TMenuItem
        Caption = '123'
      end
      object MenuItem3: TMenuItem
        Caption = '113'
      end
      object MenuItem4: TMenuItem
        Caption = '452'
      end
      object MenuItem5: TMenuItem
        Caption = '523'
      end
    end
    object s5551: TMenuItem
      Caption = 's555'
      object N551: TMenuItem
        Caption = '55'
      end
      object N221: TMenuItem
        Caption = '22'
      end
      object SettingForm11: TMenuItem
        Caption = 'SettingForm1'
        OnClick = SettingForm11Click
      end
    end
  end
end
