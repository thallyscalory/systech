inherited F_Cliente: TF_Cliente
  Caption = 'Systech - Cliente'
  Position = poDesktopCenter
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
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = -132
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
        Top = 47
        Width = 93
        Height = 13
        Caption = 'Data de Cadastro.:'
      end
      object Label8: TLabel
        Left = 3
        Top = 233
        Width = 106
        Height = 13
        Caption = 'Raz'#227'o Social (Nome).:'
      end
      object Label9: TLabel
        Left = 373
        Top = 233
        Width = 50
        Height = 13
        Caption = 'Telefone.:'
      end
      object Label10: TLabel
        Left = 373
        Top = 279
        Width = 41
        Height = 13
        Caption = 'Celular.:'
      end
      object Label11: TLabel
        Left = 3
        Top = 279
        Width = 53
        Height = 13
        Caption = 'Endere'#231'o.:'
      end
      object Label12: TLabel
        Left = 290
        Top = 279
        Width = 45
        Height = 13
        Caption = 'N'#250'mero.:'
      end
      object Label13: TLabel
        Left = 165
        Top = 325
        Width = 36
        Height = 13
        Caption = 'Bairro.:'
      end
      object Label14: TLabel
        Left = 3
        Top = 325
        Width = 73
        Height = 13
        Caption = 'Complemento.:'
      end
      object Label15: TLabel
        Left = 528
        Top = 233
        Width = 27
        Height = 13
        Caption = 'CEP.:'
      end
      object Label16: TLabel
        Left = 671
        Top = 233
        Width = 41
        Height = 13
        Caption = 'Cidade.:'
      end
      object Label17: TLabel
        Left = 528
        Top = 279
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
        Top = 325
        Width = 71
        Height = 13
        Caption = 'Observa'#231#245'es.:'
      end
      object Label30: TLabel
        Left = 632
        Top = 325
        Width = 119
        Height = 13
        Caption = 'Observa'#231#245'es de Venda.:'
      end
      object Label31: TLabel
        Left = 807
        Top = 233
        Width = 21
        Height = 13
        Caption = 'UF.:'
      end
      object Edt_IDCliente: TEdit
        Left = 3
        Top = 20
        Width = 121
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 0
      end
      object Edt_DataCadastro: TEdit
        Left = 3
        Top = 66
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 1
      end
      object RG_TipoPessoa: TRadioGroup
        Left = 3
        Top = 93
        Width = 121
        Height = 61
        Caption = 'Tipo.:'
        Enabled = False
        ItemIndex = 0
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        TabOrder = 2
        OnClick = RG_TipoPessoaClick
      end
      object PC_TipoPessoa: TPageControl
        Left = 130
        Top = 20
        Width = 751
        Height = 207
        ActivePage = TS_Fisica
        Enabled = False
        TabOrder = 3
        OnChange = PC_TipoPessoaChange
        object TS_Fisica: TTabSheet
          Caption = 'F'#237'sica'
          ExplicitLeft = 0
          ExplicitTop = 28
          object Label4: TLabel
            Left = 3
            Top = 3
            Width = 27
            Height = 13
            Caption = 'CPF.:'
          end
          object Label5: TLabel
            Left = 3
            Top = 49
            Width = 22
            Height = 13
            Caption = 'RG.:'
          end
          object Label19: TLabel
            Left = 296
            Top = 49
            Width = 52
            Height = 13
            Caption = 'Nome Pai.:'
          end
          object Label20: TLabel
            Left = 529
            Top = 49
            Width = 58
            Height = 13
            Caption = 'Nome M'#227'e.:'
          end
          object Label21: TLabel
            Left = 411
            Top = 3
            Width = 63
            Height = 13
            Caption = 'Estado Civil.:'
          end
          object Label22: TLabel
            Left = 537
            Top = 3
            Width = 68
            Height = 13
            Caption = 'Escolaridade.:'
          end
          object Label23: TLabel
            Left = 3
            Top = 95
            Width = 92
            Height = 13
            Caption = 'Local de Trabalho.:'
          end
          object Label24: TLabel
            Left = 3
            Top = 141
            Width = 37
            Height = 13
            Caption = 'Cargo.:'
          end
          object Label25: TLabel
            Left = 143
            Top = 141
            Width = 39
            Height = 13
            Caption = 'Renda.:'
          end
          object Label26: TLabel
            Left = 271
            Top = 95
            Width = 92
            Height = 13
            Caption = 'Contato Trabalho.:'
          end
          object Label27: TLabel
            Left = 271
            Top = 141
            Width = 60
            Height = 13
            Caption = 'Refer'#234'ncia.:'
          end
          object Label28: TLabel
            Left = 296
            Top = 3
            Width = 104
            Height = 13
            Caption = 'Data de Nascimento.:'
          end
          object Label32: TLabel
            Left = 422
            Top = 95
            Width = 74
            Height = 13
            Caption = 'Nacionalidade.:'
          end
          object Label33: TLabel
            Left = 576
            Top = 95
            Width = 69
            Height = 13
            Caption = 'Naturalidade.:'
          end
          object Label34: TLabel
            Left = 422
            Top = 141
            Width = 70
            Height = 13
            Caption = 'Autoriza'#231#245'es.:'
          end
          object Label35: TLabel
            Left = 576
            Top = 141
            Width = 124
            Height = 13
            Caption = 'Valor M'#225'ximo de Cr'#233'dito.:'
          end
          object Edt_CPF: TEdit
            Left = 3
            Top = 22
            Width = 180
            Height = 21
            TabOrder = 0
          end
          object Edt_RG: TEdit
            Left = 3
            Top = 68
            Width = 180
            Height = 21
            TabOrder = 1
          end
          object Edt_NomePai: TEdit
            Left = 296
            Top = 68
            Width = 227
            Height = 21
            TabOrder = 2
          end
          object Edt_NomeMae: TEdit
            Left = 529
            Top = 68
            Width = 211
            Height = 21
            TabOrder = 3
          end
          object RG_Genero: TRadioGroup
            Left = 189
            Top = 3
            Width = 101
            Height = 86
            Caption = 'G'#234'nero.:'
            ItemIndex = 2
            Items.Strings = (
              'Feminino'
              'Masculino'
              'N'#227'o Informado')
            TabOrder = 4
          end
          object CB_EstadoCivil: TComboBox
            Left = 411
            Top = 22
            Width = 120
            Height = 21
            TabOrder = 5
          end
          object CB_Escolaridade: TComboBox
            Left = 537
            Top = 22
            Width = 203
            Height = 21
            TabOrder = 6
          end
          object Edt_LocalTrabalho: TEdit
            Left = 3
            Top = 114
            Width = 262
            Height = 21
            TabOrder = 7
          end
          object CB_Cargo: TComboBox
            Left = 3
            Top = 155
            Width = 134
            Height = 21
            TabOrder = 8
          end
          object Edt_Renda: TEdit
            Left = 143
            Top = 155
            Width = 122
            Height = 21
            Alignment = taRightJustify
            TabOrder = 9
          end
          object Edt_ContatoTrabalho: TEdit
            Left = 271
            Top = 114
            Width = 145
            Height = 21
            TabOrder = 10
          end
          object CB_ReferenciaF: TComboBox
            Left = 271
            Top = 155
            Width = 145
            Height = 21
            TabOrder = 11
          end
          object Edt_DataNascimento: TEdit
            Left = 296
            Top = 22
            Width = 109
            Height = 21
            TabOrder = 12
          end
          object Edt_Nacionalidade: TEdit
            Left = 422
            Top = 114
            Width = 148
            Height = 21
            TabOrder = 13
          end
          object Edit3: TEdit
            Left = 576
            Top = 114
            Width = 164
            Height = 21
            TabOrder = 14
          end
          object Edt_AutorizacoesF: TEdit
            Left = 422
            Top = 155
            Width = 148
            Height = 21
            TabOrder = 15
          end
          object Edt_ValorMaxCredF: TEdit
            Left = 576
            Top = 155
            Width = 164
            Height = 21
            TabOrder = 16
          end
        end
        object TS_Juridica: TTabSheet
          Caption = 'Jur'#237'dica'
          ImageIndex = 1
          object Label6: TLabel
            Left = 3
            Top = 49
            Width = 18
            Height = 13
            Caption = 'IE.:'
          end
          object Label7: TLabel
            Left = 3
            Top = 3
            Width = 33
            Height = 13
            Caption = 'CNPJ.:'
          end
          object Label36: TLabel
            Left = 271
            Top = 141
            Width = 60
            Height = 13
            Caption = 'Refer'#234'ncia.:'
          end
          object Label37: TLabel
            Left = 422
            Top = 141
            Width = 70
            Height = 13
            Caption = 'Autoriza'#231#245'es.:'
          end
          object Label38: TLabel
            Left = 576
            Top = 141
            Width = 124
            Height = 13
            Caption = 'Valor M'#225'ximo de Cr'#233'dito.:'
          end
          object Edit1: TEdit
            Left = 3
            Top = 68
            Width = 180
            Height = 21
            TabOrder = 0
          end
          object Edit2: TEdit
            Left = 3
            Top = 22
            Width = 180
            Height = 21
            TabOrder = 1
          end
          object CB_ReferenciaJ: TComboBox
            Left = 271
            Top = 155
            Width = 145
            Height = 21
            TabOrder = 2
          end
          object Edt_AutorizacoesJ: TEdit
            Left = 422
            Top = 155
            Width = 148
            Height = 21
            TabOrder = 3
          end
          object Edt_ValorMaxCredJ: TEdit
            Left = 576
            Top = 155
            Width = 164
            Height = 21
            TabOrder = 4
          end
        end
      end
      object Edt_RazaoSocial: TEdit
        Left = 3
        Top = 252
        Width = 364
        Height = 21
        Enabled = False
        TabOrder = 4
      end
      object Edt_Telefone: TEdit
        Left = 373
        Top = 252
        Width = 149
        Height = 21
        Enabled = False
        TabOrder = 5
      end
      object Edt_Celular: TEdit
        Left = 373
        Top = 298
        Width = 149
        Height = 21
        Enabled = False
        TabOrder = 6
      end
      object Edt_Endereco: TEdit
        Left = 3
        Top = 298
        Width = 281
        Height = 21
        Enabled = False
        TabOrder = 7
      end
      object Edt_Numero: TEdit
        Left = 290
        Top = 298
        Width = 77
        Height = 21
        Alignment = taRightJustify
        Enabled = False
        TabOrder = 8
      end
      object Edt_Bairro: TEdit
        Left = 165
        Top = 344
        Width = 202
        Height = 21
        Enabled = False
        TabOrder = 9
      end
      object Edt_Complemento: TEdit
        Left = 3
        Top = 344
        Width = 156
        Height = 21
        Enabled = False
        TabOrder = 10
      end
      object Edt_CEP: TEdit
        Left = 528
        Top = 252
        Width = 137
        Height = 21
        Enabled = False
        TabOrder = 11
      end
      object CB_Cidade: TComboBox
        Left = 671
        Top = 252
        Width = 130
        Height = 21
        Enabled = False
        TabOrder = 12
      end
      object Edt_Pais: TEdit
        Left = 528
        Top = 298
        Width = 137
        Height = 21
        Enabled = False
        TabOrder = 13
      end
      object Edt_Email: TEdit
        Left = 3
        Top = 390
        Width = 364
        Height = 21
        Enabled = False
        TabOrder = 14
      end
      object RG_Status: TRadioGroup
        Left = 3
        Top = 160
        Width = 121
        Height = 67
        Caption = 'Status.:'
        Enabled = False
        ItemIndex = 0
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 15
      end
      object Mm_Obs: TMemo
        Left = 373
        Top = 344
        Width = 253
        Height = 67
        Enabled = False
        TabOrder = 16
      end
      object Mm_ObsVendas: TMemo
        Left = 632
        Top = 344
        Width = 249
        Height = 67
        Enabled = False
        TabOrder = 17
      end
      object Edt_UF: TEdit
        Left = 807
        Top = 252
        Width = 67
        Height = 21
        Enabled = False
        TabOrder = 18
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
      'order by c.nome asc;')
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
    Left = 600
    Top = 48
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 348
    Top = 13
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nome'
      Control = CB_Cidade
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'nome_cargo'
      Control = CB_Cargo
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'empresaref'
      Control = CB_ReferenciaF
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
  end
  object FDQCargo: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select '
      '  * '
      'from Cargo'
      'where status = '#39'A'#39' or status = '#39'a'#39';')
    Left = 676
    Top = 7
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
    Left = 672
    Top = 56
  end
  object FDQReferencia: TFDQuery
    Connection = DM.FD_Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from ReferenciaComercial'
      'where Status = '#39'A'#39' or Status = '#39'a'#39';')
    Left = 544
    Top = 8
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
    Left = 536
    Top = 56
  end
end
