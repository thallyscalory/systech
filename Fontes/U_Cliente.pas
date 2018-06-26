unit U_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TF_Cliente = class(TF_modelo)
    Label2: TLabel;
    Edt_IDCliente: TEdit;
    Label3: TLabel;
    Edt_DataCadastro: TEdit;
    RG_TipoPessoa: TRadioGroup;
    PC_TipoPessoa: TPageControl;
    TS_Fisica: TTabSheet;
    TS_Juridica: TTabSheet;
    Label4: TLabel;
    Edt_CPF: TEdit;
    Label5: TLabel;
    Edt_RG: TEdit;
    Edit1: TEdit;
    Label6: TLabel;
    Edit2: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edt_RazaoSocial: TEdit;
    Label9: TLabel;
    Edt_Telefone: TEdit;
    Label10: TLabel;
    Edt_Celular: TEdit;
    Label11: TLabel;
    Edt_Endereco: TEdit;
    Label12: TLabel;
    Edt_Numero: TEdit;
    Label13: TLabel;
    Edt_Bairro: TEdit;
    Label14: TLabel;
    Edt_Complemento: TEdit;
    Edt_CEP: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    CB_Cidade: TComboBox;
    FDQCidade: TFDQuery;
    FDQCidadenome: TStringField;
    FDQCidadeid_cidade: TFDAutoIncField;
    FDQCidadeid_estado: TIntegerField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    Edt_Pais: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edt_Email: TEdit;
    Label19: TLabel;
    Edt_NomePai: TEdit;
    Edt_NomeMae: TEdit;
    Label20: TLabel;
    RG_Genero: TRadioGroup;
    Label21: TLabel;
    CB_EstadoCivil: TComboBox;
    Label22: TLabel;
    CB_Escolaridade: TComboBox;
    Label23: TLabel;
    Edt_LocalTrabalho: TEdit;
    Label24: TLabel;
    CB_Cargo: TComboBox;
    FDQCargo: TFDQuery;
    FDQCargoid_cargo: TFDAutoIncField;
    FDQCargonome_cargo: TStringField;
    FDQCargostatus: TStringField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    Label25: TLabel;
    Edt_Renda: TEdit;
    Edt_ContatoTrabalho: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    CB_ReferenciaF: TComboBox;
    FDQReferencia: TFDQuery;
    FDQReferenciaid_referencia: TFDAutoIncField;
    FDQReferenciaempresaref: TStringField;
    FDQReferenciatelefone: TStringField;
    FDQReferenciastatus: TStringField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    Label28: TLabel;
    Edt_DataNascimento: TEdit;
    RG_Status: TRadioGroup;
    Label29: TLabel;
    Mm_Obs: TMemo;
    Mm_ObsVendas: TMemo;
    Label30: TLabel;
    Edt_UF: TEdit;
    Label31: TLabel;
    FDQCidadeuf: TStringField;
    LinkControlToField1: TLinkControlToField;
    Edt_Nacionalidade: TEdit;
    Label32: TLabel;
    Edit3: TEdit;
    Label33: TLabel;
    Edt_AutorizacoesF: TEdit;
    Edt_ValorMaxCredF: TEdit;
    Label34: TLabel;
    Label35: TLabel;
    CB_ReferenciaJ: TComboBox;
    Label36: TLabel;
    Edt_AutorizacoesJ: TEdit;
    Label37: TLabel;
    Edt_ValorMaxCredJ: TEdit;
    Label38: TLabel;
    procedure RG_TipoPessoaClick(Sender: TObject);
    procedure PC_TipoPessoaChange(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cliente: TF_Cliente;

implementation

{$R *.dfm}

uses U_dm;

procedure TF_Cliente.btn_novoClick(Sender: TObject);
begin
  inherited;
  PC_TipoPessoa.Enabled := True;
  RG_TipoPessoa.Enabled := True;
  RG_Status.Enabled := True;
  Edt_DataCadastro.Enabled := True;
  Edt_RazaoSocial.Enabled := True;
  Edt_Endereco.Enabled := True;
  Edt_Numero.Enabled := True;
  Edt_Complemento.Enabled := True;
  Edt_Bairro.Enabled := True;
  Edt_Email.Enabled := True;
  Edt_Telefone.Enabled := True;
  Edt_Celular.Enabled := True;
  Mm_Obs.Enabled := True;
  Mm_ObsVendas.Enabled := True;
  Edt_CEP.Enabled := True;
  CB_Cidade.Enabled := True;
  Edt_Pais.Enabled := True;
end;

procedure TF_Cliente.PC_TipoPessoaChange(Sender: TObject);
begin
  inherited;
  if PC_TipoPessoa.TabIndex <> RG_TipoPessoa.ItemIndex then
    RG_TipoPessoa.ItemIndex := PC_TipoPessoa.TabIndex
end;

procedure TF_Cliente.RG_TipoPessoaClick(Sender: TObject);
begin
  inherited;
  if RG_TipoPessoa.ItemIndex = 0 then
  begin
    PC_TipoPessoa.TabIndex := 0;
  end
  else
  begin
    PC_TipoPessoa.TabIndex := 1;
  end;

end;

end.
