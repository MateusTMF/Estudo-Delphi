object Form1: TForm1
  Left = 379
  Top = 128
  Width = 662
  Height = 326
  HorzScrollBar.Position = 3
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BtnText: TButton
    Left = 333
    Top = 152
    Width = 145
    Height = 25
    Caption = 'Exibir nomes clientes'
    TabOrder = 0
    OnClick = BtnTextClick
  end
  object GroupBox1: TGroupBox
    Left = 61
    Top = 112
    Width = 185
    Height = 105
    Caption = 'GroupBox1'
    TabOrder = 1
    object Button2: TButton
      Left = 56
      Top = 40
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = -3
    Top = 0
    Width = 649
    Height = 49
    TabOrder = 2
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 600
    Top = 192
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 192
    object C1: TMenuItem
      Caption = 'Sistema'
      object Configuraes1: TMenuItem
        Caption = 'Configura'#231#245'es'
        OnClick = Configuraes1Click
      end
      object Usuarios1: TMenuItem
        Caption = 'Usuarios'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
    end
    object Contatos1: TMenuItem
      Caption = 'Cadastrar'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
      object Pedidos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Pedidos1Click
      end
      object Funcionarios1: TMenuItem
        Caption = 'Funcionarios'
      end
      object Vendedores1: TMenuItem
        Caption = 'Vendedores'
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      object Clientes2: TMenuItem
        Caption = 'Clientes'
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
      end
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-7'
    HostName = 'localhost'
    Port = 5432
    Database = 'bancoteste'
    User = 'postgres'
    Password = 'postdba'
    Left = 568
    Top = 192
  end
end
