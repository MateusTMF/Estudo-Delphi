object Form3: TForm3
  Left = 321
  Top = 177
  Width = 841
  Height = 484
  Caption = 'Form3'
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
    Left = 360
    Top = 16
    Width = 89
    Height = 25
    Caption = 'Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 32
    Top = 48
    Width = 745
    Height = 385
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Produto'
      object desc: TLabeledEdit
        Left = 56
        Top = 80
        Width = 617
        Height = 24
        EditLabel.Width = 62
        EditLabel.Height = 16
        EditLabel.Caption = 'Descri'#231#227'o'
        TabOrder = 0
      end
      object qtd: TLabeledEdit
        Left = 56
        Top = 128
        Width = 297
        Height = 24
        EditLabel.Width = 73
        EditLabel.Height = 16
        EditLabel.Caption = 'Quantidade:'
        TabOrder = 1
      end
      object val: TLabeledEdit
        Left = 376
        Top = 128
        Width = 297
        Height = 24
        EditLabel.Width = 35
        EditLabel.Height = 16
        EditLabel.Caption = 'Valor:'
        TabOrder = 2
      end
      object cadastrarProduto: TButton
        Left = 272
        Top = 176
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = cadastrarProdutoClick
      end
      object ButtonClose2: TButton
        Left = 384
        Top = 176
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = ButtonClose2Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cliente'
      ImageIndex = 1
      object nome: TLabeledEdit
        Left = 56
        Top = 80
        Width = 617
        Height = 24
        EditLabel.Width = 98
        EditLabel.Height = 16
        EditLabel.Caption = 'Nome Completo'
        TabOrder = 0
      end
      object cpf: TLabeledEdit
        Left = 56
        Top = 128
        Width = 297
        Height = 24
        EditLabel.Width = 29
        EditLabel.Height = 16
        EditLabel.Caption = 'CPF:'
        TabOrder = 1
      end
      object cidade: TLabeledEdit
        Left = 376
        Top = 128
        Width = 297
        Height = 24
        EditLabel.Width = 47
        EditLabel.Height = 16
        EditLabel.Caption = 'Cidade:'
        TabOrder = 2
      end
      object ButtonClose: TButton
        Left = 384
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = ButtonCloseClick
      end
      object Cadastrar: TButton
        Left = 272
        Top = 200
        Width = 75
        Height = 25
        Caption = 'Cadastrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CadastrarClick
      end
    end
  end
end
