inherited F_SubGrupo: TF_SubGrupo
  Caption = 'Systech - SubGrupo'
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited DBNavigator1: TDBNavigator
      Width = 220
      DataSource = DM.DS_Subgrupo
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Hints.Strings = ()
      ExplicitWidth = 220
    end
  end
  inherited Consultar: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      inherited BitBtn1: TBitBtn
        OnClick = BitBtn1Click
      end
      inherited Edit1: TEdit
        Top = 51
        Height = 27
        ExplicitTop = 51
        ExplicitHeight = 27
      end
      inherited DBGrid1: TDBGrid
        DataSource = DM.DS_Subgrupo
        Columns = <
          item
            Expanded = False
            FieldName = 'id_subgrupo'
            Title.Caption = 'ID SUBGRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Alignment = taCenter
            Title.Caption = 'NOME SUBGRUPO'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'NOME GRUPO'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datacadastro'
            Title.Alignment = taCenter
            Title.Caption = 'DATA CADASTRO'
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Alignment = taCenter
            Title.Caption = 'STATUS'
            Width = 100
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      object Label2: TLabel
        Left = 32
        Top = 42
        Width = 68
        Height = 13
        Caption = 'ID SUBGRUPO'
        FocusControl = ed_subgrupo
      end
      object Label4: TLabel
        Left = 32
        Top = 88
        Width = 101
        Height = 13
        Caption = 'DATA DE CADASTRO'
        FocusControl = ed_datacadastro
      end
      object Label5: TLabel
        Left = 32
        Top = 128
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = ed_nome
      end
      object Label7: TLabel
        Left = 32
        Top = 171
        Width = 35
        Height = 13
        Caption = 'GRUPO'
      end
      object ed_subgrupo: TDBEdit
        Tag = 1
        Left = 32
        Top = 61
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'id_subgrupo'
        DataSource = DM.DS_Subgrupo
        Enabled = False
        TabOrder = 0
      end
      object ed_datacadastro: TDBEdit
        Tag = 1
        Left = 32
        Top = 103
        Width = 132
        Height = 21
        CharCase = ecUpperCase
        DataField = 'datacadastro'
        DataSource = DM.DS_Subgrupo
        Enabled = False
        TabOrder = 1
      end
      object ed_nome: TDBEdit
        Tag = 1
        Left = 32
        Top = 144
        Width = 201
        Height = 21
        CharCase = ecUpperCase
        DataField = 'nome'
        DataSource = DM.DS_Subgrupo
        Enabled = False
        TabOrder = 2
      end
      object combo_grupo: TDBLookupComboBox
        Tag = 2
        Left = 32
        Top = 190
        Width = 157
        Height = 21
        DataField = 'id_grupo'
        DataSource = DM.DS_Subgrupo
        Enabled = False
        KeyField = 'id_grupo'
        ListField = 'nome'
        ListSource = DM.DS_Subgrupo_grupo
        TabOrder = 3
      end
      object radio_status: TDBRadioGroup
        Tag = 3
        Left = 32
        Top = 217
        Width = 185
        Height = 62
        Caption = 'STATUS'
        Color = clWhite
        Columns = 2
        DataField = 'status'
        DataSource = DM.DS_Subgrupo
        Enabled = False
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        ParentBackground = False
        ParentColor = False
        TabOrder = 4
        Values.Strings = (
          '1'
          '0')
      end
    end
  end
  object FDQ_Subgrupo_suporte: TFDQuery
    Active = True
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from subgrupo;')
    Left = 592
    Top = 40
  end
end
