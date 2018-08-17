inherited F_formapagamento: TF_formapagamento
  Caption = 'F_formapagamento'
  ExplicitWidth = 908
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Consultar: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 881
      ExplicitHeight = 414
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 24
      ExplicitWidth = 881
      ExplicitHeight = 414
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 116
        Height = 13
        Caption = 'ID Forma de Pagamento'
      end
      object Label3: TLabel
        Left = 16
        Top = 78
        Width = 132
        Height = 13
        Caption = 'Nome Forma de Pagamento'
      end
      object EDT_idformadepagamento: TEdit
        Left = 16
        Top = 51
        Width = 143
        Height = 21
        TabOrder = 0
      end
      object EDT_nomeformadepagamento: TEdit
        Left = 16
        Top = 97
        Width = 301
        Height = 21
        TabOrder = 1
      end
      object DBR_statusformadepagamento: TDBRadioGroup
        Left = 16
        Top = 139
        Width = 185
        Height = 65
        Caption = 'Status'
        Columns = 2
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 2
        Values.Strings = (
          'A'
          'I')
      end
    end
  end
end
