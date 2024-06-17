object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Grade Calculator'
  ClientHeight = 161
  ClientWidth = 384
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelResult: TLabel
    Left = 24
    Top = 64
    Width = 108
    Height = 13
    Caption = 'Grade will appear here'
  end
  object EditScore: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Enter Score'
  end
  object ButtonCalculate: TButton
    Left = 160
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Calculate'
    TabOrder = 1
    OnClick = ButtonCalculateClick
  end
end
