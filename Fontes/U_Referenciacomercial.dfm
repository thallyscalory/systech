inherited F_Referenciacomercial: TF_Referenciacomercial
  Caption = 'Systech - Refer'#234'ncia Comercial'
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btn_novo: TBitBtn
      Width = 71
      ExplicitWidth = 71
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Consultar: TPageControl
    inherited TabSheet1: TTabSheet
      inherited BitBtn1: TBitBtn
        OnClick = BitBtn1Click
      end
      inherited EdtPesquisar: TEdit
        CharCase = ecUpperCase
        OnExit = EdtPesquisarExit
      end
      inherited DBGrid1: TDBGrid
        DataSource = DS
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_referencia'
            Title.Alignment = taCenter
            Title.Caption = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'empresaref'
            Title.Caption = 'Empresa'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 505
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Title.Caption = 'Telefone'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'Status'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 50
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      object Label2: TLabel
        Left = 12
        Top = 16
        Width = 77
        Height = 13
        Caption = 'ID_Referencia.:'
      end
      object Label3: TLabel
        Left = 12
        Top = 62
        Width = 104
        Height = 13
        Caption = 'Empresa Refer'#234'ncia.:'
      end
      object Label4: TLabel
        Left = 12
        Top = 108
        Width = 94
        Height = 13
        Caption = 'Telefone Empresa.:'
      end
      object Edt_ID: TEdit
        Left = 12
        Top = 35
        Width = 121
        Height = 21
        BiDiMode = bdRightToLeft
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 0
      end
      object Edt_Empresa: TEdit
        Left = 12
        Top = 81
        Width = 438
        Height = 21
        CharCase = ecUpperCase
        Enabled = False
        MaxLength = 20
        TabOrder = 1
      end
      object RG_Status: TRadioGroup
        Left = 12
        Top = 160
        Width = 77
        Height = 73
        Caption = 'Status'
        Enabled = False
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 3
      end
      object Edt_Telefone: TDBEdit
        Left = 12
        Top = 127
        Width = 153
        Height = 21
        DataField = 'telefone'
        DataSource = DS_New
        Enabled = False
        TabOrder = 2
      end
    end
  end
  object DS: TDataSource
    DataSet = DM.FDQ_RC
    Left = 536
    Top = 96
  end
  object DS_New: TDataSource
    DataSet = DM.FDQ_ReferenciaComercial
    Left = 588
    Top = 95
  end
end
