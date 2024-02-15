object frmCliente: TfrmCliente
  Left = 296
  Top = 145
  Width = 775
  Height = 480
  Caption = 'Cadastro de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBCliente: TDBGrid
    Left = 0
    Top = 160
    Width = 759
    Height = 224
    Align = alBottom
    DataSource = DSCliente
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cidade'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cpf'
        Title.Caption = 'CPF'
        Visible = True
      end>
  end
  object pnlButton: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object btninserir: TButton
      Left = 4
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = btninserirClick
    end
    object btnalterar: TButton
      Left = 84
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = btnalterarClick
    end
    object btnexcluir: TButton
      Left = 243
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = btnexcluirClick
    end
    object btnImprimir: TButton
      Left = 404
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 3
      OnClick = btnImprimirClick
    end
    object btnSalvar: TButton
      Left = 164
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 4
      OnClick = btnSalvarClick
    end
    object btncancelar: TButton
      Left = 323
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = btncancelarClick
    end
    object btnExcel: TButton
      Left = 486
      Top = 8
      Width = 75
      Height = 25
      Caption = 'EXCEL'
      TabOrder = 6
      OnClick = btnExcelClick
    end
    object Button1: TButton
      Left = 568
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fortes'
      TabOrder = 7
      OnClick = Button1Click
    end
    object btnpedido: TButton
      Left = 648
      Top = 8
      Width = 97
      Height = 25
      Caption = 'Relat'#243'rio Pedido'
      TabOrder = 8
      OnClick = btnpedidoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 65
    Width = 759
    Height = 95
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 2
    object Label1: TLabel
      Left = 80
      Top = 0
      Width = 47
      Height = 20
      Caption = 'Nome'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 588
      Top = 0
      Width = 35
      Height = 20
      Caption = 'CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 56
      Width = 57
      Height = 20
      Caption = 'Cidade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 0
      Width = 57
      Height = 20
      Caption = 'Codigo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdtNome: TDBEdit
      Left = 80
      Top = 24
      Width = 489
      Height = 21
      DataField = 'nome'
      DataSource = DSCliente
      TabOrder = 0
    end
    object DBEditCPF: TDBEdit
      Left = 588
      Top = 24
      Width = 153
      Height = 21
      DataField = 'cpf'
      DataSource = DSCliente
      TabOrder = 1
    end
    object DBEdtCidade: TDBEdit
      Left = 8
      Top = 80
      Width = 729
      Height = 21
      DataField = 'cidade'
      DataSource = DSCliente
      TabOrder = 2
    end
    object DBEdtCodigo: TDBEdit
      Left = 8
      Top = 24
      Width = 57
      Height = 21
      DataField = 'idcliente'
      DataSource = DSCliente
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 384
    Width = 759
    Height = 57
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 3
    object btnstatuspedido: TButton
      Left = 576
      Top = 17
      Width = 169
      Height = 25
      Caption = 'Relat'#243'rio Status do Pedido'
      TabOrder = 0
      OnClick = btnstatuspedidoClick
    end
    object btnexcelpedido: TButton
      Left = 448
      Top = 18
      Width = 121
      Height = 25
      Caption = 'Excel Pedido'
      TabOrder = 1
      OnClick = btnexcelpedidoClick
    end
    object btnetiqueta: TButton
      Left = 320
      Top = 18
      Width = 121
      Height = 25
      Caption = 'Etiqueta'
      TabOrder = 2
      OnClick = btnetiquetaClick
    end
    object ckEtiqueta: TRadioGroup
      Left = 128
      Top = 4
      Width = 185
      Height = 41
      Caption = 'Op'#231#227'o de Etiqueta'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Com Borda'
        'Sem Borda')
      ParentFont = False
      TabOrder = 3
    end
  end
  object conexao: TZConnection
    Protocol = 'postgresql'
    HostName = 'localhost'
    Port = 5432
    Database = 'bancoteste'
    User = 'postgres'
    Password = 'postdba'
    Catalog = 'bancoteste'
    Properties.Strings = (
      'codepage=UTF8'
      'client_encoding=UTF8')
    Connected = True
    Top = 384
  end
  object ZCliente: TZQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE'
      'order by idcliente')
    Params = <>
    Left = 2
    Top = 298
    object ZClienteidcliente: TIntegerField
      FieldName = 'idcliente'
      Required = True
    end
    object ZClientenome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object ZClientecidade: TStringField
      FieldName = 'cidade'
      Size = 30
    end
    object ZClientecpf: TStringField
      FieldName = 'cpf'
      Size = 15
    end
  end
  object DSCliente: TDataSource
    DataSet = ZCliente
    Top = 336
  end
  object ZQryPedido: TZQuery
    Connection = conexao
    SQL.Strings = (
      
        'SELECT P.IDPEDIDO, P.TOTAL,P.IDCLIENTE,P.QTD_TOTAL,C.NOME, P.STA' +
        'TUS '
      'FROM PEDIDO P'
      'LEFT JOIN CLIENTE C ON C.IDCLIENTE  = P.IDCLIENTE'
      'WHERE P.STATUS = :STATUS'
      'ORDER BY P.STATUS, P.IDPEDIDO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    Left = 32
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'STATUS'
        ParamType = ptUnknown
      end>
    object ZQryPedidoidpedido: TIntegerField
      FieldName = 'idpedido'
      Required = True
    end
    object ZQryPedidototal: TFloatField
      FieldName = 'total'
    end
    object ZQryPedidoidcliente: TIntegerField
      FieldName = 'idcliente'
    end
    object ZQryPedidoqtd_total: TIntegerField
      FieldName = 'qtd_total'
    end
    object ZQryPedidonome: TStringField
      FieldName = 'nome'
      Size = 30
    end
    object ZQryPedidostatus: TStringField
      FieldName = 'status'
      ReadOnly = True
      Size = 15
    end
  end
  object dsPedido: TDataSource
    DataSet = ZQryPedido
    Left = 32
    Top = 336
  end
  object DsItem: TDataSource
    DataSet = ZQryItem
    Left = 80
    Top = 336
  end
  object ZQryItem: TZQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT I.IDITEMPEDIDO, I.QUANTIDADE, P.DESCRICAO '
      'FROM ITEM_PEDIDO I '
      'LEFT JOIN PRODUTO P ON P.IDPRODUTO = I.IDPRODUTO,'
      'PEDIDO D'
      'WHERE I.IDPEDIDO = D.IDPEDIDO'
      'AND D.IDPEDIDO = :PEDIDO'
      'ORDER BY I.IDITEMPEDIDO')
    Params = <
      item
        DataType = ftUnknown
        Name = 'PEDIDO'
        ParamType = ptUnknown
      end>
    Left = 80
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'PEDIDO'
        ParamType = ptUnknown
      end>
    object ZQryItemiditempedido: TIntegerField
      FieldName = 'iditempedido'
      Required = True
    end
    object ZQryItemquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object ZQryItemdescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
  end
end
