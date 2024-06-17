object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #3648#3588#3619#3639#3656#3629#3591#3588#3636#3604#3648#3621#3586' +'
  ClientHeight = 306
  ClientWidth = 400
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Group1: TGroupBox
    Left = 8
    Top = 8
    Width = 384
    Height = 153
    Caption = #3585#3634#3619#3588#3635#3609#3623#3609
    TabOrder = 0
    object LabelFuntion: TLabel
      Left = 260
      Top = 7
      Width = 93
      Height = 13
      Caption = 'Conversion Funtion'
    end
    object Label1: TLabel
      Left = 55
      Top = 19
      Width = 8
      Height = 13
      Caption = '+'
    end
    object Label2: TLabel
      Left = 56
      Top = 43
      Width = 4
      Height = 13
      Caption = '-'
    end
    object Label3: TLabel
      Left = 56
      Top = 76
      Width = 6
      Height = 13
      Caption = '*'
    end
    object Label4: TLabel
      Left = 59
      Top = 102
      Width = 4
      Height = 13
      Caption = '/'
    end
    object Label5: TLabel
      Left = 52
      Top = 126
      Width = 20
      Height = 13
      Caption = 'mod'
    end
    object Label6: TLabel
      Left = 123
      Top = 23
      Width = 8
      Height = 13
      Caption = '='
    end
    object Label7: TLabel
      Left = 123
      Top = 47
      Width = 8
      Height = 13
      Caption = '='
    end
    object Label8: TLabel
      Left = 123
      Top = 73
      Width = 8
      Height = 13
      Caption = '='
    end
    object Label9: TLabel
      Left = 123
      Top = 100
      Width = 8
      Height = 13
      Caption = '='
    end
    object Label10: TLabel
      Left = 123
      Top = 124
      Width = 8
      Height = 13
      Caption = '='
    end
    object FuntionList: TListBox
      Left = 260
      Top = 25
      Width = 121
      Height = 97
      ItemHeight = 13
      Items.Strings = (
        'IntToStr(i)'
        'StrToInt(s)'
        'FloastTOStr(f)'
        'StrToFloat(s)')
      TabOrder = 0
    end
    object sum1: TEdit
      Left = 11
      Top = 16
      Width = 38
      Height = 21
      TabOrder = 1
    end
    object delete1: TEdit
      Left = 11
      Top = 43
      Width = 38
      Height = 21
      TabOrder = 2
    end
    object kun1: TEdit
      Left = 11
      Top = 70
      Width = 38
      Height = 21
      TabOrder = 3
    end
    object hun1: TEdit
      Left = 11
      Top = 97
      Width = 38
      Height = 21
      TabOrder = 4
    end
    object mod1: TEdit
      Left = 11
      Top = 121
      Width = 38
      Height = 21
      TabOrder = 5
    end
    object sum2: TEdit
      Left = 76
      Top = 16
      Width = 38
      Height = 21
      TabOrder = 6
    end
    object delete2: TEdit
      Left = 75
      Top = 43
      Width = 38
      Height = 21
      TabOrder = 7
    end
    object kun2: TEdit
      Left = 75
      Top = 70
      Width = 38
      Height = 21
      TabOrder = 8
    end
    object hun2: TEdit
      Left = 75
      Top = 97
      Width = 38
      Height = 21
      TabOrder = 9
    end
    object mod2: TEdit
      Left = 75
      Top = 121
      Width = 38
      Height = 21
      TabOrder = 10
    end
    object bsum: TButton
      Left = 183
      Top = 14
      Width = 58
      Height = 25
      Caption = #3588#3635#3609#3623#3609
      TabOrder = 11
      OnClick = CalculateResult
    end
    object bdelete: TButton
      Left = 183
      Top = 41
      Width = 58
      Height = 25
      Caption = #3588#3635#3609#3623#3609
      TabOrder = 12
      OnClick = CalculateResult
    end
    object bkun: TButton
      Left = 183
      Top = 68
      Width = 58
      Height = 25
      Caption = #3588#3635#3609#3623#3609
      TabOrder = 13
      OnClick = CalculateResult
    end
    object bhun: TButton
      Left = 183
      Top = 95
      Width = 58
      Height = 25
      Caption = #3588#3635#3609#3623#3609
      TabOrder = 14
      OnClick = CalculateResult
    end
    object bmod: TButton
      Left = 183
      Top = 119
      Width = 58
      Height = 25
      Caption = #3588#3635#3609#3623#3609
      TabOrder = 15
      OnClick = CalculateResult
    end
  end
  object Group2: TGroupBox
    Left = 8
    Top = 176
    Width = 384
    Height = 123
    Caption = #3585#3634#3619#3588#3635#3609#3623#3609'ver 2'
    TabOrder = 1
    object Label11: TLabel
      Left = 136
      Top = 8
      Width = 44
      Height = 13
      Caption = 'Operator'
    end
    object Label12: TLabel
      Left = 152
      Top = 60
      Width = 36
      Height = 13
      Caption = #3612#3621#3621#3633#3614#3607#3660
    end
    object Sumver1: TEdit
      Left = 11
      Top = 24
      Width = 102
      Height = 21
      TabOrder = 0
    end
    object Sumver2: TEdit
      Left = 213
      Top = 24
      Width = 86
      Height = 21
      TabOrder = 1
    end
    object Operator1: TComboBox
      Left = 120
      Top = 24
      Width = 84
      Height = 21
      Style = csDropDownList
      TabOrder = 2
      Items.Strings = (
        '+'
        '-'
        '*'
        '/'
        'mod')
    end
    object Sumver3: TEdit
      Left = 108
      Top = 79
      Width = 128
      Height = 21
      TabOrder = 3
      OnChange = BsumverClick
    end
    object Bsumver: TButton
      Left = 306
      Top = 23
      Width = 58
      Height = 25
      Caption = #3588#3635#3609#3623#3609
      TabOrder = 4
      OnClick = BsumverClick
    end
  end
  object sum3: TEdit
    Left = 147
    Top = 24
    Width = 38
    Height = 21
    TabOrder = 2
  end
  object delete3: TEdit
    Left = 147
    Top = 51
    Width = 38
    Height = 21
    TabOrder = 3
  end
  object kun3: TEdit
    Left = 147
    Top = 78
    Width = 38
    Height = 21
    TabOrder = 4
  end
  object hun3: TEdit
    Left = 147
    Top = 105
    Width = 38
    Height = 21
    TabOrder = 5
  end
  object mod3: TEdit
    Left = 147
    Top = 129
    Width = 38
    Height = 21
    TabOrder = 6
  end
end
