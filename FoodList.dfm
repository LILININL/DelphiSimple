object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #3650#3611#3619#3649#3585#3619#3617#3592#3633#3604#3585#3634#3619#3648#3617#3609#3641#3629#3634#3627#3634#3619
  ClientHeight = 436
  ClientWidth = 531
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 395
    Width = 531
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitLeft = -8
    ExplicitTop = 323
    ExplicitWidth = 525
    DesignSize = (
      531
      41)
    object MenuCount: TLabel
      Left = 103
      Top = 16
      Width = 49
      Height = 13
    end
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 93
      Height = 13
      Caption = #3592#3635#3609#3623#3609#3619#3634#3634#3618#3585#3634#3619#3648#3617#3609#3641' :'
    end
    object CloseBt: TBitBtn
      Left = 445
      Top = 9
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #3611#3636#3604
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = CloseBtClick
      ExplicitLeft = 440
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 531
    Height = 41
    Align = alTop
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = #3650#3611#3619#3649#3585#3619#3617#3592#3633#3604#3585#3634#3619#3648#3617#3609#3641#3629#3634#3627#3634#3619
    TabOrder = 1
    ExplicitLeft = 256
    ExplicitTop = 24
    ExplicitWidth = 185
  end
  object MenuG: TGroupBox
    Left = 0
    Top = 41
    Width = 334
    Height = 354
    Align = alClient
    Caption = #3619#3634#3618#3585#3634#3619#3629#3634#3627#3634#3619
    TabOrder = 2
    ExplicitWidth = 525
    ExplicitHeight = 276
    object Splitter2: TSplitter
      Left = 2
      Top = 15
      Height = 337
      ExplicitLeft = 184
      ExplicitTop = 112
      ExplicitHeight = 100
    end
    object FoodList: TListBox
      AlignWithMargins = True
      Left = 8
      Top = 18
      Width = 321
      Height = 331
      Align = alClient
      ItemHeight = 13
      TabOrder = 0
      ExplicitLeft = 3
      ExplicitTop = 13
      ExplicitWidth = 319
      ExplicitHeight = 269
    end
  end
  object Task: TGroupBox
    Left = 334
    Top = 41
    Width = 197
    Height = 354
    Align = alRight
    Caption = 'Task'
    TabOrder = 3
    ExplicitLeft = 320
    ExplicitTop = -23
    ExplicitHeight = 276
    object Splitter1: TSplitter
      Left = 2
      Top = 15
      Height = 337
      ExplicitLeft = 56
      ExplicitTop = 248
      ExplicitHeight = 100
    end
    object AddBt: TBitBtn
      Left = 6
      Top = 21
      Width = 188
      Height = 41
      Caption = #3648#3614#3636#3656#3617#3619#3634#3618#3585#3634#3619
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
      OnClick = AddBtClick
    end
    object DeleteBt: TBitBtn
      Left = 6
      Top = 68
      Width = 187
      Height = 41
      Caption = #3621#3610#3619#3634#3618#3585#3634#3619#3607#3637#3656#3648#3621#3639#3629#3585
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = DeleteBtClick
    end
    object ClearBt: TBitBtn
      Left = 6
      Top = 114
      Width = 187
      Height = 41
      Caption = #3621#3657#3634#3591#3619#3634#3618#3585#3634#3619
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = ClearBtClick
    end
    object SaveBt: TBitBtn
      Left = 6
      Top = 161
      Width = 187
      Height = 41
      Caption = #3610#3633#3609#3607#3638#3585#3619#3634#3618#3585#3634#3619
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
      OnClick = SaveBtClick
    end
    object LodeMenu: TButton
      Left = 6
      Top = 307
      Width = 188
      Height = 41
      Caption = #3650#3627#3621#3604#3619#3634#3618#3585#3634#3619#3648#3617#3609#3641
      TabOrder = 4
      OnClick = LodeMenuClick
    end
    object ReMenu: TButton
      Left = 6
      Top = 260
      Width = 188
      Height = 41
      Caption = #3648#3619#3637#3618#3591#3619#3634#3618#3585#3634#3619#3648#3617#3609#3641
      TabOrder = 5
      OnClick = ReMenuClick
    end
    object EditMenu: TButton
      Left = 6
      Top = 213
      Width = 188
      Height = 41
      Caption = #3649#3585#3657#3652#3586#3619#3634#3618#3585#3634#3619#3607#3637#3656#3648#3621#3639#3629#3585
      TabOrder = 6
      OnClick = EditMenuClick
    end
  end
end
