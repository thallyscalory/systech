inherited F_Cliente: TF_Cliente
  Caption = 'Systech - Cliente'
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 908
  ExplicitHeight = 544
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btn_sair: TBitBtn
      Left = 740
      ExplicitLeft = 740
    end
    inherited DBNavigator1: TDBNavigator
      Hints.Strings = ()
    end
  end
  inherited Consultar: TPageControl
    Width = 892
    ActivePage = TabSheet2
    ExplicitWidth = 892
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 884
      ExplicitHeight = 414
      inherited BitBtn1: TBitBtn
        OnClick = BitBtn1Click
      end
      inherited EdtPesquisar: TEdit
        Left = 3
        OnExit = EdtPesquisarExit
        ExplicitLeft = 3
      end
      inherited DBGrid1: TDBGrid
        DataSource = DS
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id_cliente'
            Title.Alignment = taRightJustify
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome_razaosocial'
            Title.Caption = 'Nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipopessoa'
            Title.Caption = 'TipoPessoa'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf_cnpj'
            Title.Caption = 'CPF & CNPJ'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'rg_ie'
            Title.Caption = 'RG & IE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telefone'
            Title.Caption = 'Telefone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'celular'
            Title.Caption = 'Celular'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'endereco'
            Title.Caption = 'Endere'#231'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'numero'
            Title.Caption = 'N'#250'mero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bairro'
            Title.Caption = 'Bairro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'complemento'
            Title.Caption = 'Complemento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Title.Caption = 'CEP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_cidade'
            Title.Caption = 'ID_Cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pais'
            Title.Caption = 'Pa'#237's'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'email'
            Title.Caption = 'Email'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomepai'
            Title.Caption = 'Pai'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomemae'
            Title.Caption = 'M'#227'e'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'genero'
            Title.Caption = 'G'#234'nero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estadocivil'
            Title.Caption = 'Estado Civil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'grauescolaridade'
            Title.Caption = 'Escolaridade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'localdetrabalho'
            Title.Caption = 'Local de Trabalho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_cargo'
            Title.Caption = 'ID_Cargo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'renda'
            Title.Caption = 'Renda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'contatotrabalho'
            Title.Caption = 'Contato Trabalho'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_referencia'
            Title.Caption = 'ID_Referencia'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datadecadastro'
            Title.Caption = 'DataCadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'datanascimento'
            Title.Caption = 'DataNascimento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'Status'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'observacao'
            Title.Caption = 'Observa'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'autorizacoes'
            Title.Caption = 'Autoriza'#231#245'es'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valormaxcred'
            Title.Caption = 'ValorMaxCred'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'naturalidade'
            Title.Caption = 'Naturalidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nacionalidade'
            Title.Caption = 'Nacionalidade'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      Enabled = False
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 884
      ExplicitHeight = 414
      object Label2: TLabel
        Left = 3
        Top = 1
        Width = 19
        Height = 13
        Caption = 'ID.:'
      end
      object Label3: TLabel
        Left = 3
        Top = 114
        Width = 93
        Height = 13
        Caption = 'Data de Cadastro.:'
      end
      object Label8: TLabel
        Left = 130
        Top = 1
        Width = 106
        Height = 13
        Caption = 'Raz'#227'o Social (Nome).:'
      end
      object Label9: TLabel
        Left = 595
        Top = 1
        Width = 50
        Height = 13
        Caption = 'Telefone.:'
      end
      object Label10: TLabel
        Left = 725
        Top = 3
        Width = 41
        Height = 13
        Caption = 'Celular.:'
      end
      object Label11: TLabel
        Left = 3
        Top = 233
        Width = 53
        Height = 13
        Caption = 'Endere'#231'o.:'
      end
      object Label12: TLabel
        Left = 3
        Top = 279
        Width = 45
        Height = 13
        Caption = 'N'#250'mero.:'
      end
      object Label13: TLabel
        Left = 3
        Top = 325
        Width = 36
        Height = 13
        Caption = 'Bairro.:'
      end
      object Label14: TLabel
        Left = 97
        Top = 279
        Width = 73
        Height = 13
        Caption = 'Complemento.:'
      end
      object Label15: TLabel
        Left = 373
        Top = 233
        Width = 27
        Height = 13
        Caption = 'CEP.:'
      end
      object Label16: TLabel
        Left = 516
        Top = 233
        Width = 41
        Height = 13
        Caption = 'Cidade.:'
      end
      object Label17: TLabel
        Left = 735
        Top = 233
        Width = 27
        Height = 13
        Caption = 'Pa'#237's.:'
      end
      object Label18: TLabel
        Left = 3
        Top = 371
        Width = 36
        Height = 13
        Caption = 'E-mail.:'
      end
      object Label29: TLabel
        Left = 373
        Top = 279
        Width = 71
        Height = 13
        Caption = 'Observa'#231#245'es.:'
      end
      object Label31: TLabel
        Left = 652
        Top = 233
        Width = 21
        Height = 13
        Caption = 'UF.:'
      end
      object Label4: TLabel
        Left = 130
        Top = 47
        Width = 56
        Height = 13
        Caption = 'CPF/CNPJ.:'
      end
      object Label5: TLabel
        Left = 130
        Top = 93
        Width = 36
        Height = 13
        Caption = 'RG/IE.:'
      end
      object Label23: TLabel
        Left = 130
        Top = 139
        Width = 92
        Height = 13
        Caption = 'Local de Trabalho.:'
      end
      object Label24: TLabel
        Left = 130
        Top = 185
        Width = 37
        Height = 13
        Caption = 'Cargo.:'
      end
      object Label25: TLabel
        Left = 274
        Top = 185
        Width = 39
        Height = 13
        Caption = 'Renda.:'
      end
      object Label27: TLabel
        Left = 405
        Top = 187
        Width = 60
        Height = 13
        Caption = 'Refer'#234'ncia.:'
      end
      object Label26: TLabel
        Left = 405
        Top = 139
        Width = 92
        Height = 13
        Caption = 'Contato Trabalho.:'
      end
      object Label19: TLabel
        Left = 535
        Top = 47
        Width = 52
        Height = 13
        Caption = 'Nome Pai.:'
      end
      object Label28: TLabel
        Left = 500
        Top = 3
        Width = 89
        Height = 13
        Caption = 'Data Nascimento.:'
      end
      object Label21: TLabel
        Left = 423
        Top = 47
        Width = 63
        Height = 13
        Caption = 'Estado Civil.:'
      end
      object Label22: TLabel
        Left = 423
        Top = 93
        Width = 68
        Height = 13
        Caption = 'Escolaridade.:'
      end
      object Label20: TLabel
        Left = 632
        Top = 93
        Width = 58
        Height = 13
        Caption = 'Nome M'#227'e.:'
      end
      object Label33: TLabel
        Left = 710
        Top = 139
        Width = 69
        Height = 13
        Caption = 'Naturalidade.:'
      end
      object Label35: TLabel
        Left = 710
        Top = 185
        Width = 124
        Height = 13
        Caption = 'Valor M'#225'ximo de Cr'#233'dito.:'
      end
      object Label34: TLabel
        Left = 556
        Top = 185
        Width = 70
        Height = 13
        Caption = 'Autoriza'#231#245'es.:'
      end
      object Label32: TLabel
        Left = 556
        Top = 139
        Width = 74
        Height = 13
        Caption = 'Nacionalidade.:'
      end
      object Edt_IDCliente: TEdit
        Left = 3
        Top = 20
        Width = 121
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 29
      end
      object RG_TipoPessoa: TRadioGroup
        Left = 3
        Top = 47
        Width = 121
        Height = 61
        Caption = 'Tipo.:'
        ItemIndex = 0
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        TabOrder = 3
        OnClick = RG_TipoPessoaClick
      end
      object Edt_RazaoSocial: TEdit
        Left = 130
        Top = 20
        Width = 364
        Height = 21
        CharCase = ecUpperCase
        MaxLength = 60
        TabOrder = 0
      end
      object Edt_Endereco: TEdit
        Left = 3
        Top = 252
        Width = 364
        Height = 21
        MaxLength = 60
        TabOrder = 20
      end
      object Edt_Numero: TEdit
        Left = 3
        Top = 298
        Width = 88
        Height = 21
        Alignment = taRightJustify
        MaxLength = 10
        TabOrder = 21
      end
      object Edt_Bairro: TEdit
        Left = 3
        Top = 344
        Width = 364
        Height = 21
        MaxLength = 30
        TabOrder = 23
      end
      object Edt_Complemento: TEdit
        Left = 97
        Top = 298
        Width = 270
        Height = 21
        MaxLength = 45
        TabOrder = 22
      end
      object CB_Cidade: TComboBox
        Left = 516
        Top = 252
        Width = 98
        Height = 21
        MaxLength = 30
        TabOrder = 26
        OnEnter = CB_CidadeEnter
      end
      object Edt_Pais: TEdit
        Left = 725
        Top = 252
        Width = 149
        Height = 21
        MaxLength = 20
        TabOrder = 27
      end
      object Edt_Email: TEdit
        Left = 3
        Top = 390
        Width = 364
        Height = 21
        CharCase = ecLowerCase
        MaxLength = 45
        TabOrder = 24
      end
      object RG_Status: TRadioGroup
        Left = 3
        Top = 160
        Width = 121
        Height = 65
        Caption = 'Status.:'
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 30
      end
      object Mm_Obs: TMemo
        Left = 373
        Top = 298
        Width = 501
        Height = 113
        TabOrder = 28
      end
      object Edt_UF: TEdit
        Left = 652
        Top = 252
        Width = 67
        Height = 21
        Enabled = False
        MaxLength = 2
        TabOrder = 31
      end
      object Edt_Telefone: TDBEdit
        Left = 595
        Top = 20
        Width = 124
        Height = 21
        DataField = 'telefone'
        DataSource = DS_Cliente
        TabOrder = 1
      end
      object Edt_Celular: TDBEdit
        Left = 725
        Top = 20
        Width = 149
        Height = 21
        DataField = 'celular'
        DataSource = DS_Cliente
        TabOrder = 2
      end
      object Edt_CEP: TDBEdit
        Left = 373
        Top = 252
        Width = 137
        Height = 21
        DataField = 'cep'
        DataSource = DS_Cliente
        TabOrder = 25
      end
      object Edt_DataCadastro: TEdit
        Left = 3
        Top = 133
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 32
      end
      object Edt_CPFCNPJ: TDBEdit
        Left = 130
        Top = 66
        Width = 180
        Height = 21
        DataField = 'cpf_cnpj'
        DataSource = DS_Cliente
        TabOrder = 4
      end
      object Edt_RGIE: TEdit
        Left = 130
        Top = 112
        Width = 180
        Height = 21
        MaxLength = 15
        TabOrder = 8
      end
      object Edt_LocalTrabalho: TEdit
        Left = 130
        Top = 158
        Width = 269
        Height = 21
        MaxLength = 45
        TabOrder = 11
      end
      object CB_Cargo: TComboBox
        Left = 130
        Top = 204
        Width = 106
        Height = 21
        MaxLength = 20
        TabOrder = 15
        OnEnter = CB_CargoEnter
      end
      object Edt_Renda: TEdit
        Left = 274
        Top = 204
        Width = 125
        Height = 21
        Alignment = taRightJustify
        TabOrder = 16
        Text = '0'
        OnEnter = Edt_RendaEnter
      end
      object CB_Referencia: TComboBox
        Left = 405
        Top = 204
        Width = 113
        Height = 21
        MaxLength = 20
        TabOrder = 17
        OnEnter = CB_ReferenciaEnter
      end
      object Edt_ContatoTrabalho: TEdit
        Left = 405
        Top = 158
        Width = 145
        Height = 21
        MaxLength = 30
        TabOrder = 12
      end
      object RG_Genero: TRadioGroup
        Left = 316
        Top = 56
        Width = 101
        Height = 77
        Caption = 'G'#234'nero.:'
        ItemIndex = 2
        Items.Strings = (
          'Feminino'
          'Masculino'
          'N'#227'o Informado')
        TabOrder = 5
      end
      object Edt_NomePai: TEdit
        Left = 535
        Top = 66
        Width = 339
        Height = 21
        MaxLength = 45
        TabOrder = 7
      end
      object Edt_NomeMae: TEdit
        Left = 632
        Top = 112
        Width = 242
        Height = 21
        MaxLength = 45
        TabOrder = 10
      end
      object Edt_Naturalidade: TEdit
        Left = 710
        Top = 158
        Width = 164
        Height = 21
        MaxLength = 45
        TabOrder = 14
      end
      object Edt_ValorMaxCred: TEdit
        Left = 710
        Top = 204
        Width = 164
        Height = 21
        Alignment = taRightJustify
        TabOrder = 19
        Text = '0'
        OnEnter = Edt_ValorMaxCredEnter
      end
      object Edt_Autorizacoes: TEdit
        Left = 556
        Top = 204
        Width = 148
        Height = 21
        MaxLength = 45
        TabOrder = 18
      end
      object Edt_Nacionalidade: TEdit
        Left = 556
        Top = 158
        Width = 148
        Height = 21
        MaxLength = 45
        TabOrder = 13
      end
      object CB_EstadoCivil: TComboBox
        Left = 423
        Top = 66
        Width = 106
        Height = 21
        MaxLength = 5
        TabOrder = 6
        OnEnter = CB_EstadoCivilEnter
      end
      object CB_Escolaridade: TComboBox
        Left = 423
        Top = 112
        Width = 203
        Height = 21
        MaxLength = 20
        TabOrder = 9
        OnEnter = CB_EscolaridadeEnter
      end
      object Edt_DataNascimento: TDBEdit
        Left = 500
        Top = 20
        Width = 89
        Height = 21
        DataField = 'datanascimento'
        DataSource = DS_Cliente
        TabOrder = 33
      end
      object Btn_Cidade: TBitBtn
        Left = 620
        Top = 252
        Width = 26
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        TabOrder = 34
        OnClick = Btn_CidadeClick
      end
      object Btn_Cargo: TBitBtn
        Left = 242
        Top = 204
        Width = 26
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        TabOrder = 35
        OnClick = Btn_CargoClick
      end
      object Btn_Referencia: TBitBtn
        Left = 524
        Top = 204
        Width = 26
        Height = 21
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        TabOrder = 36
        OnClick = Btn_ReferenciaClick
      end
    end
  end
  object FDQCidade: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select '
      '  c.nome,'
      '  c.id_cidade,'
      '  e.id_estado,'
      '  e.uf '
      'from cidade c'
      'inner join estado e'
      '  on e.id_estado = c.id_estado'
      'order by 1 asc;')
    Left = 604
    Top = 7
    object FDQCidadenome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object FDQCidadeid_cidade: TFDAutoIncField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCidadeid_estado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQCidadeuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDQCidade
    ScopeMappings = <>
    Left = 808
    Top = 65528
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 732
    Top = 5
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nome'
      Control = CB_Cidade
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'uf'
      Control = Edt_UF
      Track = True
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'empresaref'
      Control = CB_Referencia
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nome_cargo'
      Control = CB_Cargo
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object FDQCargo: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select '
      '  * '
      'from Cargo'
      'where status = '#39'A'#39' or status = '#39'a'#39
      'and id_cargo = :id_cargo;')
    Left = 676
    Top = 7
    ParamData = <
      item
        Name = 'ID_CARGO'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%'
      end>
    object FDQCargoid_cargo: TFDAutoIncField
      FieldName = 'id_cargo'
      Origin = 'id_cargo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCargonome_cargo: TStringField
      FieldName = 'nome_cargo'
      Origin = 'nome_cargo'
      Required = True
    end
    object FDQCargostatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDQCargo
    ScopeMappings = <>
    Left = 840
    Top = 16
  end
  object FDQReferencia: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from ReferenciaComercial'
      'where Status = '#39'A'#39' or Status = '#39'a'#39
      'and id_referencia = :id_referencia;')
    Left = 544
    Top = 8
    ParamData = <
      item
        Name = 'ID_REFERENCIA'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%'
      end>
    object FDQReferenciaid_referencia: TFDAutoIncField
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQReferenciaempresaref: TStringField
      FieldName = 'empresaref'
      Origin = 'empresaref'
      Required = True
    end
    object FDQReferenciatelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 11
    end
    object FDQReferenciastatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = FDQReferencia
    ScopeMappings = <>
    Left = 776
    Top = 40
  end
  object FDQCliente: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from Cliente where id_Cliente = null;')
    Left = 480
    Top = 8
    object FDQClienteid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQClientenome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Origin = 'nome_razaosocial'
      Required = True
      Size = 60
    end
    object FDQClientetipopessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopessoa'
      Origin = 'tipopessoa'
      FixedChar = True
      Size = 1
    end
    object FDQClientecpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Required = True
      Size = 15
    end
    object FDQClienterg_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
      Size = 15
    end
    object FDQClientetelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)0000-0000;1;_'
      Size = 15
    end
    object FDQClientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 15
    end
    object FDQClienteendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object FDQClientenumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQClientebairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQClientecomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object FDQClientecep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '00000-000;1;_'
      FixedChar = True
      Size = 9
    end
    object FDQClienteid_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
    end
    object FDQClientepais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pais'
      Origin = 'pais'
    end
    object FDQClienteemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 45
    end
    object FDQClientenomepai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomepai'
      Origin = 'nomepai'
      Size = 45
    end
    object FDQClientenomemae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomemae'
      Origin = 'nomemae'
      Size = 45
    end
    object FDQClientegenero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'genero'
      Origin = 'genero'
      FixedChar = True
      Size = 2
    end
    object FDQClienteestadocivil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estadocivil'
      Origin = 'estadocivil'
      FixedChar = True
      Size = 5
    end
    object FDQClientegrauescolaridade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grauescolaridade'
      Origin = 'grauescolaridade'
    end
    object FDQClientelocaldetrabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'localdetrabalho'
      Origin = 'localdetrabalho'
      Size = 45
    end
    object FDQClienteid_cargo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cargo'
      Origin = 'id_cargo'
    end
    object FDQClienterenda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'renda'
      Origin = 'renda'
      Precision = 8
      Size = 2
    end
    object FDQClientecontatotrabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contatotrabalho'
      Origin = 'contatotrabalho'
      Size = 30
    end
    object FDQClienteid_referencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
    end
    object FDQClientedatadecadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datadecadastro'
      Origin = 'datadecadastro'
    end
    object FDQClientedatanascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
      EditMask = '!99/99/0000;1;_'
    end
    object FDQClientestatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 2
    end
    object FDQClienteobservacao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftMemo
    end
    object FDQClienteautorizacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'autorizacoes'
      Origin = 'autorizacoes'
      Size = 45
    end
    object FDQClientevalormaxcred: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valormaxcred'
      Origin = 'valormaxcred'
      Precision = 8
      Size = 2
    end
    object FDQClientenaturalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 45
    end
    object FDQClientenacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 45
    end
  end
  object FDQ_ClienteMax: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select max(id_cliente) from Cliente;')
    Left = 412
    Top = 15
    object FDQ_ClienteMaxmaxid_cliente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'max(id_cliente)'
      Origin = '`max(id_cliente)`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQ_C: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select * from Cliente where nome_razaosocial like :nomeCliente;')
    Left = 268
    Top = 23
    ParamData = <
      item
        Name = 'NOMECLIENTE'
        DataType = ftWideString
        ParamType = ptInput
        Value = '%'
      end>
    object FDQ_Cid_cliente: TFDAutoIncField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Cnome_razaosocial: TStringField
      FieldName = 'nome_razaosocial'
      Origin = 'nome_razaosocial'
      Required = True
      Size = 60
    end
    object FDQ_Ctipopessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipopessoa'
      Origin = 'tipopessoa'
      FixedChar = True
      Size = 1
    end
    object FDQ_Ccpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Required = True
      Size = 15
    end
    object FDQ_Crg_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
      Size = 15
    end
    object FDQ_Ctelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 15
    end
    object FDQ_Ccelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 15
    end
    object FDQ_Cendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 60
    end
    object FDQ_Cnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQ_Cbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQ_Ccomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 45
    end
    object FDQ_Ccep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      FixedChar = True
      Size = 9
    end
    object FDQ_Cid_cidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
    end
    object FDQ_Cpais: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pais'
      Origin = 'pais'
    end
    object FDQ_Cemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 45
    end
    object FDQ_Cnomepai: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomepai'
      Origin = 'nomepai'
      Size = 45
    end
    object FDQ_Cnomemae: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomemae'
      Origin = 'nomemae'
      Size = 45
    end
    object FDQ_Cgenero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'genero'
      Origin = 'genero'
      FixedChar = True
      Size = 2
    end
    object FDQ_Cestadocivil: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estadocivil'
      Origin = 'estadocivil'
      FixedChar = True
      Size = 5
    end
    object FDQ_Cgrauescolaridade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grauescolaridade'
      Origin = 'grauescolaridade'
    end
    object FDQ_Clocaldetrabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'localdetrabalho'
      Origin = 'localdetrabalho'
      Size = 45
    end
    object FDQ_Cid_cargo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cargo'
      Origin = 'id_cargo'
    end
    object FDQ_Crenda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'renda'
      Origin = 'renda'
      Precision = 8
      Size = 2
    end
    object FDQ_Ccontatotrabalho: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'contatotrabalho'
      Origin = 'contatotrabalho'
      Size = 30
    end
    object FDQ_Cid_referencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
    end
    object FDQ_Cdatadecadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datadecadastro'
      Origin = 'datadecadastro'
    end
    object FDQ_Cdatanascimento: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'datanascimento'
      Origin = 'datanascimento'
    end
    object FDQ_Cstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 2
    end
    object FDQ_Cobservacao: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacao'
      Origin = 'observacao'
      BlobType = ftMemo
    end
    object FDQ_Cautorizacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'autorizacoes'
      Origin = 'autorizacoes'
      Size = 45
    end
    object FDQ_Cvalormaxcred: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valormaxcred'
      Origin = 'valormaxcred'
      Precision = 8
      Size = 2
    end
    object FDQ_Cnaturalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'naturalidade'
      Origin = 'naturalidade'
      Size = 45
    end
    object FDQ_Cnacionalidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nacionalidade'
      Origin = 'nacionalidade'
      Size = 45
    end
  end
  object DS: TDataSource
    DataSet = FDQ_C
    Left = 340
    Top = 15
  end
  object FDQCidadeEdit: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select '
      '  c.nome,'
      '  c.id_cidade,'
      '  e.id_estado,'
      '  e.uf '
      'from cidade c'
      'inner join estado e'
      '  on e.id_estado = c.id_estado'
      '  and c.id_cidade = :id_cidade'
      'limit 1;')
    Left = 340
    Top = 55
    ParamData = <
      item
        Name = 'ID_CIDADE'
        ParamType = ptInput
      end>
    object FDQCidadeEditnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object FDQCidadeEditid_cidade: TFDAutoIncField
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCidadeEditid_estado: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQCidadeEdituf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'UF'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
  end
  object DS_Cliente: TDataSource
    DataSet = FDQCliente
    Left = 192
    Top = 8
  end
end
