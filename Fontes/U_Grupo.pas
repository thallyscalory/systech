unit U_Grupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TF_Grupo = class(TF_modelo)
    Label2: TLabel;
    ed_grupo: TDBEdit;
    Label4: TLabel;
    ed_datacadastro: TDBEdit;
    Label5: TLabel;
    ed_nome: TDBEdit;
    radio_status: TDBRadioGroup;
    shape_id: TShape;
    shape_data: TShape;
    shape_nome: TShape;
    shape_status: TShape;
    FDQ_Grupo_suporte: TFDQuery;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ed_grupoChange(Sender: TObject);
    procedure ed_datacadastroChange(Sender: TObject);
    procedure ed_nomeChange(Sender: TObject);
    procedure radio_statusChange(Sender: TObject);
  private
    { Private declarations }
    procedure setCampos(estado: boolean);
    procedure doInitButtons(recordCount: integer);
    function isDuplicated(): boolean;
    procedure doColors(nome: String);
    function isDateValid(Data: String): boolean;
  public
    { Public declarations }
  end;

var
  F_Grupo: TF_Grupo;

implementation

{$R *.dfm}

uses U_dm;

{ TF_Grupo }

procedure TF_Grupo.BitBtn1Click(Sender: TObject);
var
  SQL: String;
begin
  SQL := 'select * from grupo where nome like ' +
  QuotedStr('%' + EdtPesquisar.Text + '%') + ';'; //
  //showmessage(SQL);
  DM.FDQ_Grupo.Open(SQL);

end;

procedure TF_Grupo.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  doColors('asdadsasd');
  DM.FDQ_Grupo.Cancel;
  DM.FDQ_Grupo.Refresh;
  setCampos(false);
end;

procedure TF_Grupo.btn_editarClick(Sender: TObject);
begin
  doInitButtons(DM.FDQ_Grupo.recordCount);
  if btn_editar.Enabled = true then
  begin
    inherited;
    DM.FDQ_Grupo.Edit;
    setCampos(true);
  end;
end;

procedure TF_Grupo.btn_novoClick(Sender: TObject);
var
  hoje: TDate;
begin
  inherited;
  DM.FDQ_Grupo.Refresh;
  DM.FDQ_Grupo.Insert;
  hoje := Now;
  ed_datacadastro.Text := EmptyStr + FormatDateTime('DD/MM/YYYY', hoje);
  radio_status.ItemIndex := 0;
  setCampos(true);
end;

procedure TF_Grupo.btn_salvarClick(Sender: TObject);
begin
  if (ed_nome.Text = '') then
  begin
    doColors(ed_nome.Name);
    showmessage('Campo nome não pode estar vazio!');
  end
  else if (isDateValid(ed_datacadastro.Text) = false) then
  begin
    doColors(ed_datacadastro.Name);
    showmessage('Data de cadastro inválida!');
  end
  else if (radio_status.ItemIndex = -1) then
  begin
    doColors(radio_status.Name);
    showmessage('Status vazio!');
  end
  else if (DM.FDQ_Grupo.Active = false) then
  begin
    doColors(ed_grupo.Name);
    showmessage('Não conectado!');
  end
  else if (isDuplicated() = true) then
  begin
    doColors(ed_grupo.Name);
    showmessage('Cadastro duplicado!');
  end
  else
  begin
    doColors('asdasdasd');

    DM.FDQ_Grupo.Post;
    DM.FDQ_Grupo.Refresh;
    setCampos(false);
    inherited;
  end;

end;



procedure TF_Grupo.doColors(nome: String);
var
  i: integer;
begin

  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TDBEdit then
    begin
      if (Components[i] as TDBEdit).Name = nome then
        (Components[i] as TDBEdit).Color := clRed
      else
        (Components[i] as TDBEdit).Color := clWhite;
    end
    else if Components[i] is TDBLookupComboBox then
    begin
      if (Components[i] as TDBLookupComboBox).Name = nome then
        (Components[i] as TDBLookupComboBox).Color := clRed
      else
        (Components[i] as TDBLookupComboBox).Color := clWhite;
    end
    else if Components[i] is TDBRadioGroup then
    begin
      if (Components[i] as TDBRadioGroup).Name = nome then
        (Components[i] as TDBRadioGroup).Color := clRed
      else
        (Components[i] as TDBRadioGroup).Color := clWhite;
    end
    else
    begin

    end;
  end;

end;

procedure TF_Grupo.doInitButtons(recordCount: integer);
begin
  if recordCount > 0 then
  begin
    btn_editar.Enabled := true;
  end;
end;

procedure TF_Grupo.ed_datacadastroChange(Sender: TObject);
begin
  if (isDateValid(ed_datacadastro.Text)) then
  begin
    shape_data.Brush.Color := clGreen;
  end
  else
    shape_data.Brush.Color := clRed;

end;

procedure TF_Grupo.ed_nomeChange(Sender: TObject);
begin
  if ed_nome.Text <> '' then
  begin
    shape_nome.Brush.Color := clGreen;
  end
  else
    shape_nome.Brush.Color := clRed;
end;

procedure TF_Grupo.ed_grupoChange(Sender: TObject);
begin
  if ed_grupo.Text <> '' then
  begin
    shape_id.Brush.Color := clGreen;
  end
  else
    shape_id.Brush.Color := clRed;
end;

procedure TF_Grupo.FormCreate(Sender: TObject);
begin
  btn_novo.Enabled := true;
  btn_editar.Enabled := false;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  doInitButtons(DM.FDQ_Grupo.recordCount);
end;

function TF_Grupo.isDateValid(Data: String): boolean;
var
  resultado: boolean;
begin

  try
    StrToDate(Data);
    resultado := true;
  except
    on EConvertError do
      resultado := false;
  end;

  result := resultado;
end;

function TF_Grupo.isDuplicated: boolean;
var
  resultado: boolean;
begin
 FDQ_grupo_suporte.Refresh;
  if FDQ_grupo_suporte.Locate('nome',
    VarArrayOf([ed_nome.Text]), []) then
    resultado := true
  else
    resultado := false;
  result := resultado;
end;

procedure TF_Grupo.radio_statusChange(Sender: TObject);
begin
  if radio_status.ItemIndex <> -1 then
  begin
    shape_status.Brush.Color := clGreen;
  end
  else
    shape_status.Brush.Color := clRed;

end;

procedure TF_Grupo.setCampos(estado: boolean);
begin
  ed_nome.Enabled := estado;
  radio_status.Enabled := estado;
  if estado = true then
    DBNavigator1.Enabled := false
  else
    DBNavigator1.Enabled := true;
end;

end.
