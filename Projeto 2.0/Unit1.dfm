object Form1: TForm1
  Left = 235
  Top = 130
  Width = 923
  Height = 550
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
    Left = 400
    Top = 0
    Width = 83
    Height = 24
    Caption = 'Cadastros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Cliente: TButton
    Left = 56
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Cliente'
    TabOrder = 1
    OnClick = ClienteClick
  end
  object Produto: TButton
    Left = 56
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Produto'
    TabOrder = 2
    OnClick = ProdutoClick
  end
  object CadCliente: TGroupBox
    Left = 8
    Top = 224
    Width = 889
    Height = 273
    Caption = 'Cadastro de Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    object CadCli: TButton
      Left = 312
      Top = 216
      Width = 83
      Height = 33
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = CadCliClick
    end
    object CancCli: TButton
      Left = 424
      Top = 216
      Width = 83
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = CancCliClick
    end
    object nome: TLabeledEdit
      Left = 80
      Top = 80
      Width = 729
      Height = 28
      EditLabel.Width = 46
      EditLabel.Height = 20
      EditLabel.Caption = 'Nome:'
      TabOrder = 2
    end
    object cidade: TLabeledEdit
      Left = 80
      Top = 152
      Width = 297
      Height = 28
      EditLabel.Width = 54
      EditLabel.Height = 20
      EditLabel.Caption = 'Cidade:'
      TabOrder = 3
    end
    object cpf: TLabeledEdit
      Left = 480
      Top = 152
      Width = 329
      Height = 28
      EditLabel.Width = 35
      EditLabel.Height = 20
      EditLabel.Caption = 'CPF:'
      TabOrder = 4
    end
  end
  object CadProduto: TGroupBox
    Left = 8
    Top = 224
    Width = 889
    Height = 273
    Caption = 'Cadastro de Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object CancProd: TButton
      Left = 424
      Top = 216
      Width = 83
      Height = 33
      Caption = 'Cancelar'
      TabOrder = 0
      OnClick = CancProdClick
    end
    object CadProd: TButton
      Left = 312
      Top = 216
      Width = 83
      Height = 33
      Caption = 'Cadastrar'
      TabOrder = 1
      OnClick = CadProdClick
    end
    object desc: TLabeledEdit
      Left = 80
      Top = 88
      Width = 745
      Height = 28
      EditLabel.Width = 75
      EditLabel.Height = 20
      EditLabel.Caption = 'Descri'#231#227'o:'
      TabOrder = 2
    end
    object qtd: TLabeledEdit
      Left = 80
      Top = 152
      Width = 105
      Height = 28
      EditLabel.Width = 87
      EditLabel.Height = 20
      EditLabel.Caption = 'Quantidade:'
      TabOrder = 3
    end
    object val: TLabeledEdit
      Left = 240
      Top = 152
      Width = 105
      Height = 28
      EditLabel.Width = 41
      EditLabel.Height = 20
      EditLabel.Caption = 'Valor:'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 136
    Top = 24
    Width = 737
    Height = 177
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ExcluirProduto: TButton
    Left = 0
    Top = 120
    Width = 65
    Height = 25
    Caption = 'Excluir'
    TabOrder = 5
    OnClick = ExcluirProdutoClick
  end
  object Alterar: TButton
    Left = 64
    Top = 120
    Width = 67
    Height = 25
    Caption = 'Alterar'
    TabOrder = 6
  end
  object id: TLabeledEdit
    Left = 32
    Top = 96
    Width = 65
    Height = 21
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'ID Produto'
    TabOrder = 7
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-7'
    HostName = 'localhost'
    Port = 5432
    Database = 'bancoteste'
    User = 'postgres'
    Password = 'postdba'
    Connected = True
    Left = 16
    Top = 8
  end
  object ZQueryCliente: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * from cliente'
      '')
    Params = <>
    Left = 56
    Top = 8
    object ZQueryClienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object ZQueryClientenome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object ZQueryClientecidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object ZQueryClientecpf: TStringField
      FieldName = 'cpf'
      Size = 15
    end
  end
  object ZQueryProduto: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'SELECT * from produto;')
    Params = <>
    UpdateMode = umUpdateAll
    Left = 96
    Top = 8
  end
  object DataSource1: TDataSource
    Left = 16
    Top = 48
  end
end
