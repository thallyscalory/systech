inherited F_Cidade: TF_Cidade
  Caption = 'Systech - Cidade'
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
      object Label2: TLabel
        Left = 16
        Top = 32
        Width = 47
        Height = 13
        Caption = 'ID Cidade'
      end
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 63
        Height = 13
        Caption = 'Nome Cidade'
      end
      object Label4: TLabel
        Left = 16
        Top = 144
        Width = 49
        Height = 13
        Caption = 'UF Estado'
      end
      object Label5: TLabel
        Left = 16
        Top = 200
        Width = 59
        Height = 13
        Caption = 'C'#243'digo IBGE'
      end
      object IWDBLookupComboBox1: TIWDBLookupComboBox
        Left = 16
        Top = 163
        Width = 121
        Height = 21
        Cursor = crAuto
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BGColor = clNone
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        FocusColor = clNone
        AutoHideOnMenuActivation = False
        ItemsHaveValues = False
        NoSelectionText = '-- No Selection --'
        Required = False
        RequireSelection = True
        ScriptEvents = <>
        UseSize = True
        Style = stNormal
        ButtonColor = clBtnFace
        DoSubmitValidation = True
        Editable = True
        NonEditableAsLabel = True
        SubmitOnAsyncEvent = True
        TabOrder = -1
        AutoEditable = False
        FriendlyName = 'IWDBLookupComboBox1'
        DisableWhenEmpty = True
      end
      object Label6: TLabel
        Left = 16
        Top = 256
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object Edit2: TEdit
        Left = 16
        Top = 51
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 16
        Top = 107
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit5: TEdit
        Left = 16
        Top = 219
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 16
        Top = 275
        Width = 185
        Height = 65
        Caption = 'DBRadioGroup1'
        Columns = 2
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 3
        Values.Strings = (
          'A'
          'I')
      end
    end
  end
  object Button1: TButton
    Left = 320
    Top = 226
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
end
