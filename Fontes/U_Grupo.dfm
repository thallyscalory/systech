inherited F_Grupo: TF_Grupo
  Caption = 'Systech - Grupo'
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
        DataSource = DM.DS_Grupo
        Columns = <
          item
            Expanded = False
            FieldName = 'id_grupo'
            Title.Caption = 'ID GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Title.Alignment = taCenter
            Title.Caption = 'NOME GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_cadastro'
            Title.Alignment = taCenter
            Title.Caption = 'DATA CADASTRO'
            Width = 110
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Alignment = taCenter
            Title.Caption = 'STATUS'
            Width = 60
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      object Label2: TLabel
        Left = 32
        Top = 42
        Width = 49
        Height = 13
        Caption = 'ID GRUPO'
        FocusControl = ed_grupo
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
      object shape_status: TShape
        Left = 21
        Top = 178
        Width = 12
        Height = 51
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 0
        Margins.Bottom = 1
        Pen.Color = clInactiveBorder
        Pen.Mode = pmMask
      end
      object ed_grupo: TDBEdit
        Tag = 1
        Left = 32
        Top = 61
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'id_grupo'
        DataSource = DM.DS_Grupo
        Enabled = False
        TabOrder = 0
        OnChange = ed_grupoChange
      end
      object ed_datacadastro: TDBEdit
        Tag = 1
        Left = 32
        Top = 103
        Width = 68
        Height = 21
        CharCase = ecUpperCase
        DataField = 'data_cadastro'
        DataSource = DM.DS_Grupo
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
        DataSource = DM.DS_Grupo
        Enabled = False
        TabOrder = 2
        OnChange = ed_nomeChange
      end
      object radio_status: TDBRadioGroup
        Tag = 3
        Left = 32
        Top = 171
        Width = 185
        Height = 62
        Caption = 'STATUS'
        Color = clWhite
        Columns = 2
        DataField = 'status'
        DataSource = DM.DS_Grupo
        Enabled = False
        Items.Strings = (
          'ATIVO'
          'INATIVO')
        ParentBackground = False
        ParentColor = False
        TabOrder = 3
        Values.Strings = (
          '1'
          '0')
        OnChange = radio_statusChange
      end
    end
  end
  object FDQ_Grupo_suporte: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from grupo;')
    Left = 376
    Top = 280
  end
end
