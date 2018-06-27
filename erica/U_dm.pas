unit U_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDM = class(TDataModule)
    FD_Conexao: TFDConnection;
    FDQ_RC: TFDQuery;
    FDQ_MaxRefCom: TFDQuery;
    FDQ_MaxRefComMAXid_referencia: TIntegerField;
    FDQ_ReferenciaComercial: TFDQuery;
    FDQ_ReferenciaComercialid_referencia: TFDAutoIncField;
    FDQ_ReferenciaComercialempresaref: TStringField;
    FDQ_ReferenciaComercialtelefone: TStringField;
    FDQ_ReferenciaComercialstatus: TStringField;
    FDQ_RCid_referencia: TFDAutoIncField;
    FDQ_RCempresaref: TStringField;
    FDQ_RCtelefone: TStringField;
    FDQ_RCstatus: TStringField;
    FDQ_Cidade: TFDQuery;
    DS_Subgrupo: TDataSource;
    FDQ_Subgrupo: TFDQuery;
    FDQ_Subgrupoid_subgrupo: TFDAutoIncField;
    FDQ_Subgrupoid_grupo: TIntegerField;
    FDQ_Subgrupodatacadastro: TDateField;
    FDQ_Subgruponome: TStringField;
    FDQ_Subgrupostatus: TStringField;
    FDQ_SubgruponomeGrupo: TStringField;
    FDQ_Subgrupo_grupo: TFDQuery;
    DS_Subgrupo_grupo: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
