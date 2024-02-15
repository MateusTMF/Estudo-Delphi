object Form1: TForm1
  Left = 192
  Top = 125
  Width = 930
  Height = 481
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 913
    Height = 441
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Consultar'
      object DBGrid1: TDBGrid
        Left = 248
        Top = 40
        Width = 657
        Height = 369
        DataSource = DataSource1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastrar'
      ImageIndex = 1
    end
  end
  object ZConnection1: TZConnection
    Protocol = 'postgresql-8'
    HostName = 'localhost'
    Port = 5432
    Database = 'bancoteste'
    User = 'postgres'
    Password = 'postdba'
    Connected = True
    Left = 876
    Top = 35
  end
  object ZQueryCliente: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from cliente')
    Params = <>
    Left = 844
    Top = 35
  end
  object ZQueryPedido: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from pedido')
    Params = <>
    Left = 812
    Top = 35
  end
  object DataSource1: TDataSource
    DataSet = ZQueryCliente
    Left = 716
    Top = 35
  end
  object ZQueryItemPedido: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from item_pedido')
    Params = <>
    Left = 780
    Top = 35
  end
  object ZQueryProduto: TZQuery
    Connection = ZConnection1
    Active = True
    SQL.Strings = (
      'select * from produto')
    Params = <>
    Left = 748
    Top = 35
  end
end
