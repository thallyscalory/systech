inherited F_SubGrupo: TF_SubGrupo
  Caption = 'Systech - SubGrupo'
  ClientWidth = 709
  OnCreate = FormCreate
  ExplicitWidth = 725
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btn_editar: TBitBtn
      Left = 85
      Top = 16
      Height = 25
      ExplicitLeft = 85
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    inherited btn_salvar: TBitBtn
      Left = 188
      Top = 16
      Height = 25
      ExplicitLeft = 188
      ExplicitTop = 16
      ExplicitHeight = 25
    end
    inherited btn_cancelar: TBitBtn
      Left = 283
      ExplicitLeft = 283
    end
    inherited btn_sair: TBitBtn
      Left = 600
      ExplicitLeft = 600
    end
    inherited DBNavigator1: TDBNavigator
      Left = 399
      Width = 170
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
      Hints.Strings = ()
      ExplicitLeft = 399
      ExplicitWidth = 170
    end
  end
  inherited Consultar: TPageControl
    inherited TabSheet1: TTabSheet
      inherited BitBtn1: TBitBtn
        Left = 456
        Top = 40
        Height = 32
        OnClick = BitBtn1Click
        ExplicitLeft = 456
        ExplicitTop = 40
        ExplicitHeight = 32
      end
      inherited DBGrid1: TDBGrid
        Left = 3
        Top = 78
        Width = 680
        Columns = <
          item
            Alignment = taCenter
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
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomeGrupo'
            Title.Alignment = taCenter
            Title.Caption = 'NOME GRUPO'
            Width = 170
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'datacadastro'
            Title.Alignment = taCenter
            Title.Caption = 'DATA CADASTRO'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
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
      object shape_id: TShape
        Left = 21
        Top = 61
        Width = 12
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Pen.Color = clInactiveBorder
        Pen.Mode = pmMask
      end
      object shape_data: TShape
        Left = 21
        Top = 103
        Width = 12
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Pen.Color = clInactiveBorder
        Pen.Mode = pmMask
      end
      object shape_nome: TShape
        Left = 21
        Top = 144
        Width = 12
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Pen.Color = clInactiveBorder
        Pen.Mode = pmMask
      end
      object shape_grupo: TShape
        Left = 21
        Top = 190
        Width = 12
        Height = 21
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Pen.Color = clInactiveBorder
        Pen.Mode = pmMask
      end
      object shape_status: TShape
        Left = 21
        Top = 224
        Width = 12
        Height = 51
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Pen.Color = clInactiveBorder
        Pen.Mode = pmMask
      end
      object ed_subgrupo: TDBEdit
        Tag = 1
        Left = 32
        Top = 61
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'id_subgrupo'
        Enabled = False
        TabOrder = 0
        OnChange = ed_subgrupoChange
      end
      object ed_datacadastro: TDBEdit
        Tag = 1
        Left = 32
        Top = 103
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'datacadastro'
        Enabled = False
        TabOrder = 1
        OnChange = ed_datacadastroChange
      end
      object ed_nome: TDBEdit
        Tag = 1
        Left = 32
        Top = 144
        Width = 201
        Height = 21
        CharCase = ecUpperCase
        DataField = 'nome'
        Enabled = False
        TabOrder = 2
        OnChange = ed_nomeChange
      end
      object combo_grupo: TDBLookupComboBox
        Tag = 2
        Left = 32
        Top = 190
        Width = 157
        Height = 21
        DataField = 'id_grupo'
        Enabled = False
        KeyField = 'id_grupo'
        ListField = 'nome'
        TabOrder = 3
        OnExit = combo_grupoExit
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
        OnChange = radio_statusChange
      end
    end
  end
  object FDQ_Subgrupo_suporte: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from subgrupo;')
    Left = 112
    Top = 272
  end
end
