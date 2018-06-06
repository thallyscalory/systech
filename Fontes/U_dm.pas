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
    FDQ_Max: TFDQuery;
    FDQ_MaxMAXid_referencia: TIntegerField;
    FDQ_ReferenciaComercial: TFDQuery;
    FDQ_ReferenciaComercialid_referencia: TFDAutoIncField;
    FDQ_ReferenciaComercialempresaref: TStringField;
    FDQ_ReferenciaComercialtelefone: TStringField;
    FDQ_ReferenciaComercialstatus: TStringField;
    FDQ_RCid_referencia: TFDAutoIncField;
    FDQ_RCempresaref: TStringField;
    FDQ_RCtelefone: TStringField;
    FDQ_RCstatus: TStringField;
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
