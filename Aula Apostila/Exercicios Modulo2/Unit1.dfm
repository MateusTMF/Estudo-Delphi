object Form1: TForm1
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 24
    Width = 73
    Height = 29
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 392
    Top = 24
    Width = 56
    Height = 24
    Caption = 'Label2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 640
    Top = 24
    Width = 52
    Height = 24
    Caption = 'Verde'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 640
    Top = 64
    Width = 71
    Height = 24
    Caption = 'Amarelo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 640
    Top = 104
    Width = 83
    Height = 24
    Caption = 'Vermelho'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 376
    Top = 176
    Width = 96
    Height = 37
    Caption = 'Label6'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Ativa'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Desativa'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Edit1: TEdit
    Left = 344
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button3: TButton
    Left = 472
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 800
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Verde'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 800
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Amarelo'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 800
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Vermelho'
    TabOrder = 6
    OnClick = Button6Click
  end
  object GroupBox1: TGroupBox
    Left = 112
    Top = 232
    Width = 641
    Height = 185
    Caption = 'GroupBox1'
    TabOrder = 7
    object Label7: TLabel
      Left = 24
      Top = 32
      Width = 89
      Height = 20
      Caption = 'cor do fundo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 200
      Top = 32
      Width = 85
      Height = 20
      Caption = 'cor da fonte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 344
      Top = 32
      Width = 126
      Height = 20
      Caption = 'tamanho da fonte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 520
      Top = 32
      Width = 108
      Height = 20
      Caption = 'fam'#237'lia da fonte'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Button7: TButton
      Left = 32
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Verde'
      TabOrder = 0
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 32
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Azul'
      TabOrder = 1
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 32
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Preto'
      TabOrder = 2
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 200
      Top = 64
      Width = 75
      Height = 25
      Caption = 'Verde'
      TabOrder = 3
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 200
      Top = 96
      Width = 75
      Height = 25
      Caption = 'Azul'
      TabOrder = 4
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 200
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Preto'
      TabOrder = 5
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 368
      Top = 64
      Width = 75
      Height = 25
      Caption = '14'
      TabOrder = 6
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 368
      Top = 96
      Width = 75
      Height = 25
      Caption = '18'
      TabOrder = 7
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 368
      Top = 128
      Width = 75
      Height = 25
      Caption = '24'
      TabOrder = 8
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 528
      Top = 64
      Width = 89
      Height = 25
      Caption = 'MS Sans Serif'
      TabOrder = 9
    end
    object Button17: TButton
      Left = 528
      Top = 96
      Width = 89
      Height = 25
      Caption = 'MV Boli'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
    object Button18: TButton
      Left = 528
      Top = 128
      Width = 89
      Height = 25
      Caption = 'Segoe Script'
      TabOrder = 11
    end
  end
end
