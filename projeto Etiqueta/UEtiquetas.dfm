object frmEtiqueta: TfrmEtiqueta
  Left = 406
  Top = 143
  Width = 928
  Height = 480
  Caption = 'frmEtiqueta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RLEtiqueta: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    Borders.Width = 2
    DataSource = dsproduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    PageSetup.PaperSize = fpCustom
    PageSetup.PaperWidth = 210.000000000000000000
    PageSetup.PaperHeight = 297.000000000000000000
    object RLDetailGrid1: TRLDetailGrid
      Left = 38
      Top = 38
      Width = 718
      Height = 56
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      ColCount = 3
      ColSpacing = 4.000000000000000000
      object RLDBText1: TRLDBText
        Left = 10
        Top = 29
        Width = 143
        Height = 16
        AutoSize = False
        DataField = 'descricao'
        DataSource = dsproduto
      end
      object RLLabel1: TRLLabel
        Left = 8
        Top = 7
        Width = 37
        Height = 16
        Caption = 'C'#243'd.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText2: TRLDBText
        Left = 49
        Top = 7
        Width = 48
        Height = 16
        AutoSize = False
        DataField = 'idproduto'
        DataSource = dsproduto
      end
      object RLLabel2: TRLLabel
        Left = 200
        Top = 31
        Width = 22
        Height = 16
        Caption = 'UN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLDBText3: TRLDBText
        Left = 169
        Top = 30
        Width = 32
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        DataField = 'quantidade'
        DataSource = dsproduto
      end
      object RLDBText4: TRLDBText
        Left = 145
        Top = 6
        Width = 78
        Height = 16
        Alignment = taRightJustify
        DataField = 'valor'
        DataSource = dsproduto
        DisplayMask = 'R$ #,##0.00'
      end
    end
  end
  object ZProduto: TZQuery
    Connection = frmCliente.conexao
    Active = True
    SQL.Strings = (
      'SELECT * FROM PRODUTO'
      'order by IDPRODUTO')
    Params = <>
    Left = 74
    Top = 346
    object ZProdutoidproduto: TIntegerField
      FieldName = 'idproduto'
      Required = True
    end
    object ZProdutodescricao: TStringField
      FieldName = 'descricao'
      Size = 30
    end
    object ZProdutoquantidade: TIntegerField
      FieldName = 'quantidade'
      ReadOnly = True
    end
    object ZProdutovalor: TFloatField
      FieldName = 'valor'
      ReadOnly = True
    end
  end
  object dsproduto: TDataSource
    DataSet = ZProduto
    Left = 72
    Top = 384
  end
end
