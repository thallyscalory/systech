inherited F_Cargo: TF_Cargo
  Caption = 'F_Cargo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Consultar: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 881
      ExplicitHeight = 414
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 881
      ExplicitHeight = 414
      object Label_IDCargo: TLabel
        Left = 24
        Top = 40
        Width = 43
        Height = 13
        Caption = 'ID Cargo'
      end
      object Label_NomeCargo: TLabel
        Left = 24
        Top = 96
        Width = 29
        Height = 13
        Caption = 'Cargo'
      end
      object Edit_IdCargo: TEdit
        Left = 24
        Top = 59
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit_NomeCargo: TEdit
        Left = 24
        Top = 115
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object DBRadioCargo: TDBRadioGroup
        Left = 24
        Top = 163
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
