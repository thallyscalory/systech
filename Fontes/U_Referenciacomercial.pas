unit U_Referenciacomercial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask;

type
  TF_Referenciacomercial = class(TF_modelo)
    Label2: TLabel;
    DS: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    Edt_ID: TEdit;
    Edt_Empresa: TEdit;
    RG_Status: TRadioGroup;
    DS_New: TDataSource;
    Edt_Telefone: TDBEdit;
    procedure btn_novoClick(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure AtivaCampos;
    procedure DesativaCampos;
    procedure LimpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Referenciacomercial: TF_Referenciacomercial;
  crud: string;

implementation

{$R *.dfm}

uses U_dm;

procedure TF_Referenciacomercial.BitBtn1Click(Sender: TObject);
begin
  inherited;
  DM.FDQ_RC.Close;
  DM.FDQ_RC.ParamByName('RefEmpresa').AsString := Edit1.Text + '%';
  DM.FDQ_RC.Open();
end;

procedure TF_Referenciacomercial.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  crud := EmptyStr;
  DesativaCampos;
  LimpaCampos;
end;

procedure TF_Referenciacomercial.btn_editarClick(Sender: TObject);
begin
  inherited;
  crud := 'Editar';
  AtivaCampos;
end;

procedure TF_Referenciacomercial.btn_novoClick(Sender: TObject);
var
  max: integer;
begin
  inherited;
  Consultar.TabIndex := 1;
  crud := 'Inserir';
  AtivaCampos;
  Edt_Empresa.SetFocus;
  DM.FDQ_MaxRefCom.Close;
  DM.FDQ_MaxRefCom.Open();
  max := DM.FDQ_MaxRefComMAXid_referencia.AsInteger + 1;
  Edt_ID.Text := IntToStr(max);
  DM.FDQ_ReferenciaComercial.Close;
  DM.FDQ_ReferenciaComercial.Open();
  RG_Status.ItemIndex := 0;
end;

procedure TF_Referenciacomercial.btn_salvarClick(Sender: TObject);
var
  sql: string;
  status: string;
begin
  inherited;
  if (crud = 'Inserir') then
  begin
    if (RG_Status.ItemIndex = 0) then
      status := 'A'
    else
      status := 'I';

    sql := 'insert into referenciacomercial(' + //
      'empresaref, ' + //
      'telefone, ' + //
      'status' + //
      ') values (' + //
      QuotedStr(Edt_Empresa.Text) + ',' + //
      QuotedStr(Edt_Telefone.Text) + ',' + //
      QuotedStr(status) + ');';
  end
  else if (crud = 'Editar') then
  begin
    if (RG_Status.ItemIndex = 0) then
      status := 'A'
    else
      status := 'I';

    sql := 'update referenciacomercial set ' + //
      'empresaref = ' + QuotedStr(Edt_Empresa.Text) + //
      ', telefone = ' + QuotedStr(Edt_Telefone.Text) + //
      ', status = ' + QuotedStr(status) + //
      'where id_referencia = ' + Edt_ID.Text;
  end;
  DM.FD_Conexao.ExecSQL(sql);
  DM.FD_Conexao.CommitRetaining;

  LimpaCampos;
  DesativaCampos;

  crud := EmptyStr;
end;

procedure TF_Referenciacomercial.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  Edt_ID.Text := DM.FDQ_RCid_referencia.AsString;
  Edt_Empresa.Text := DM.FDQ_RCempresaref.AsString;
  Edt_Telefone.Text := DM.FDQ_RCtelefone.AsString;
  if (DM.FDQ_RCstatus.AsString = 'A') then
    RG_Status.ItemIndex := 0
  else
    RG_Status.ItemIndex := 1;

  Consultar.TabIndex := 1;

  btn_editar.Enabled := true;
  btn_cancelar.Enabled := true;
  DesativaCampos;
end;

procedure TF_Referenciacomercial.AtivaCampos;
begin
  Edt_Empresa.Enabled := true;
  Edt_Telefone.Enabled := true;
  RG_Status.Enabled := true;
end;

procedure TF_Referenciacomercial.DesativaCampos;
begin
  Edt_Empresa.Enabled := false;
  Edt_Telefone.Enabled := false;
  RG_Status.Enabled := false;
end;

procedure TF_Referenciacomercial.LimpaCampos;
begin
  Edt_ID.Text := EmptyStr;
  Edt_Empresa.Text := EmptyStr;
  Edt_Telefone.Text := EmptyStr;
  RG_Status.ItemIndex := -1;
end;

procedure TF_Referenciacomercial.Edit1Exit(Sender: TObject);
begin
  inherited;
  DM.FDQ_RC.Close;
  DM.FDQ_RC.ParamByName('RefEmpresa').AsString := Edit1.Text + '%';
  DM.FDQ_RC.Open();
end;

procedure TF_Referenciacomercial.FormShow(Sender: TObject);
begin
  inherited;
  Consultar.TabIndex := 0;
end;

end.
