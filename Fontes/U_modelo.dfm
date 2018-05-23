object Modelo: TModelo
  Left = 0
  Top = 0
  Caption = 'MODELO'
  ClientHeight = 505
  ClientWidth = 892
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
    Top = 0
    Width = 889
    Height = 57
    TabOrder = 0
    object btn_novo: TBitBtn
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'NOVO'
      TabOrder = 0
      OnClick = btn_novoClick
    end
    object btn_editar: TBitBtn
      Left = 128
      Top = 16
      Width = 75
      Height = 25
      Caption = 'EDITAR'
      TabOrder = 1
      OnClick = btn_editarClick
    end
    object btn_salvar: TBitBtn
      Left = 240
      Top = 16
      Width = 75
      Height = 25
      Caption = 'SALVAR'
      TabOrder = 2
      OnClick = btn_salvarClick
    end
    object btn_cancelar: TBitBtn
      Left = 376
      Top = 16
      Width = 75
      Height = 25
      Caption = 'CANCELAR'
      TabOrder = 3
      OnClick = btn_cancelarClick
    end
    object btn_sair: TBitBtn
      Left = 760
      Top = 16
      Width = 75
      Height = 25
      Caption = 'SAIR'
      TabOrder = 4
      OnClick = btn_sairClick
    end
    object DBNavigator1: TDBNavigator
      Left = 480
      Top = 15
      Width = 240
      Height = 25
      TabOrder = 5
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 63
    Width = 889
    Height = 442
    TabOrder = 1
  end
end
