object frmpedidoAgrupado: TfrmpedidoAgrupado
  Left = 267
  Top = 315
  Width = 928
  Height = 480
  Caption = 'frmpedidoAgrupado'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLPedidoAgrupado: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsPedido
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLGroup1: TRLGroup
      Left = 38
      Top = 124
      Width = 718
      Height = 113
      DataFields = 'status'
      object RLBand3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        GreenBarColor = clGray
        BandType = btHeader
        Color = clSilver
        ParentColor = False
        Transparent = False
        object RLDBText1: TRLDBText
          Left = 10
          Top = 3
          Width = 51
          Height = 19
          DataField = 'status'
          DataSource = dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand4: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 24
        BandType = btColumnHeader
        object RLLabel3: TRLLabel
          Left = 88
          Top = 4
          Width = 49
          Height = 16
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel4: TRLLabel
          Left = 381
          Top = 4
          Width = 128
          Height = 16
          Alignment = taCenter
          Caption = 'Quantidade Pedido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel5: TRLLabel
          Left = 583
          Top = 4
          Width = 38
          Height = 16
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLLabel2: TRLLabel
          Left = 8
          Top = 4
          Width = 53
          Height = 16
          Caption = 'Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLBand5: TRLBand
        Left = 0
        Top = 49
        Width = 718
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object RLDBText2: TRLDBText
          Left = 88
          Top = 3
          Width = 273
          Height = 16
          AutoSize = False
          DataField = 'nome'
          DataSource = dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 378
          Top = 3
          Width = 132
          Height = 16
          Alignment = taCenter
          AutoSize = False
          DataField = 'qtd_total'
          DataSource = dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 531
          Top = 2
          Width = 90
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          DataField = 'total'
          DataSource = dsPedido
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 10
          Top = 2
          Width = 71
          Height = 19
          AutoSize = False
          DataField = 'idpedido'
          DataSource = dsPedido
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
        end
      end
      object RLSubDetail1: TRLSubDetail
        Left = 0
        Top = 71
        Width = 718
        Height = 40
        DataSource = DsItem
        BeforePrint = RLSubDetail1BeforePrint
        object RLBand6: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 20
          BandType = btColumnHeader
          object RLLabel6: TRLLabel
            Left = 8
            Top = 1
            Width = 54
            Height = 16
            Caption = 'Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLLabel7: TRLLabel
            Left = 401
            Top = 3
            Width = 78
            Height = 16
            Alignment = taCenter
            Caption = 'Quantidade'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand7: TRLBand
          Left = 0
          Top = 20
          Width = 718
          Height = 21
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText5: TRLDBText
            Left = 8
            Top = 3
            Width = 353
            Height = 16
            AutoSize = False
            DataField = 'descricao'
            DataSource = DsItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object RLDBText6: TRLDBText
            Left = 377
            Top = 3
            Width = 136
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'quantidade'
            DataSource = DsItem
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
      end
    end
    object RLBand8: TRLBand
      Left = 38
      Top = 237
      Width = 718
      Height = 44
      BandType = btSummary
      object RLLabel10: TRLLabel
        Left = 491
        Top = 3
        Width = 118
        Height = 16
        Alignment = taCenter
        Caption = 'Quantidade Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel11: TRLLabel
        Left = 535
        Top = 27
        Width = 78
        Height = 16
        Alignment = taCenter
        Caption = 'Valor Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBResult1: TRLDBResult
        Left = 615
        Top = 3
        Width = 90
        Height = 16
        Alignment = taRightJustify
        DataField = 'qtd_total'
        DataSource = dsPedido
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
      object RLDBResult2: TRLDBResult
        Left = 615
        Top = 27
        Width = 90
        Height = 16
        Alignment = taRightJustify
        DataField = 'total'
        DataSource = dsPedido
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Info = riSum
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 281
      Width = 718
      Height = 19
      BandType = btFooter
      object RLSystemInfo1: TRLSystemInfo
        Left = 8
        Top = 1
        Width = 33
        Height = 14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLLabel8: TRLLabel
        Left = 603
        Top = 1
        Width = 35
        Height = 14
        Caption = 'P'#225'gina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 642
        Top = 1
        Width = 17
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itPageNumber
        ParentFont = False
      end
      object RLLabel9: TRLLabel
        Left = 661
        Top = 2
        Width = 6
        Height = 14
        Caption = '/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 670
        Top = 2
        Width = 38
        Height = 16
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Info = itLastPageNumber
        ParentFont = False
      end
    end
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 86
      BandType = btTitle
      object RLLabel1: TRLLabel
        Left = 6
        Top = 37
        Width = 251
        Height = 22
        Caption = 'Relat'#243'rio Status do Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel12: TRLLabel
        Left = 6
        Top = 8
        Width = 78
        Height = 19
        Caption = 'Empresa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel13: TRLLabel
        Left = 86
        Top = 8
        Width = 59
        Height = 19
        Caption = 'InfoSiS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel14: TRLLabel
        Left = 6
        Top = 67
        Width = 45
        Height = 18
        Caption = 'Filtro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object ZQryPedido: TZQuery
    Connection = frmCliente.conexao
    SQL.Strings = (
      
        'SELECT P.IDPEDIDO, P.TOTAL,P.IDCLIENTE,P.QTD_TOTAL,C.NOME, P.STA' +
        'TUS '
      'FROM PEDIDO P'
      'LEFT JOIN CLIENTE C ON C.IDCLIENTE  = P.IDCLIENTE'
      'ORDER BY P.STATUS, P.IDPEDIDO')
    Params = <>
    Left = 40
    Top = 328
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
    Left = 40
    Top = 368
  end
  object DsItem: TDataSource
    DataSet = ZQryItem
    Left = 88
    Top = 368
  end
  object ZQryItem: TZQuery
    Connection = frmCliente.conexao
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
    Left = 88
    Top = 328
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
  object RLXLSFilter1: TRLXLSFilter
    DisplayName = 'Planilha Excel 97-2013'
    Left = 832
    Top = 136
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#169' 1999-20' +
      '21 Fortes Inform'#225'tica'
    DisplayName = 'Documento PDF'
    Left = 840
    Top = 72
  end
end
