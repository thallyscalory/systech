unit U_SubGrupo;

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
  TF_SubGrupo = class(TF_modelo)
    Label2: TLabel;
    ed_subgrupo: TDBEdit;
    Label4: TLabel;
    ed_datacadastro: TDBEdit;
    Label5: TLabel;
    ed_nome: TDBEdit;
    Label7: TLabel;
    combo_grupo: TDBLookupComboBox;
    radio_status: TDBRadioGroup;
    FDQ_Subgrupo_suporte: TFDQuery;
    shape_id: TShape;
    shape_data: TShape;
    shape_nome: TShape;
    shape_grupo: TShape;
    shape_status: TShape;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ed_subgrupoChange(Sender: TObject);
    procedure ed_datacadastroChange(Sender: TObject);
    procedure ed_nomeChange(Sender: TObject);
    procedure combo_grupoExit(Sender: TObject);
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
  F_SubGrupo: TF_SubGrupo;

implementation

{$R *.dfm}

uses U_dm;

{ TF_SubGrupo }

procedure TF_SubGrupo.BitBtn1Click(Sender: TObject);
var
  SQL: String;
begin
  SQL := 'select s.id_subgrupo, s.id_grupo, s.datacadastro, s.nome, s.status, g.nome as '
    + QuotedStr('nomeGrupo') + ' ' + //
    'from subgrupo s ' + //
    'inner join grupo g ' + //
    'on g.id_grupo = s.id_grupo ' + //
    'where s.nome like ' + QuotedStr('%' + Edit1.Text + '%') + ';'; //
  //showmessage(SQL);
  DM.FDQ_Subgrupo.Open(SQL);

  // DM.FDQ_Subgrupo.Locate('nome', VarArrayOf([Edit1.Text]), [loPartialKey]);
end;

procedure TF_SubGrupo.btn_cancelarClick(Sender: TObject);
begin
  inherited;
  doColors('asdadsasd');
  DM.FDQ_Subgrupo.Cancel;
  DM.FDQ_Subgrupo.Refresh;
  setCampos(false);
end;

procedure TF_SubGrupo.btn_editarClick(Sender: TObject);
begin
  doInitButtons(DM.FDQ_Subgrupo.recordCount);
  if btn_editar.Enabled = true then
  begin
    inherited;
    DM.FDQ_Subgrupo.Edit;
    setCampos(true);
  end;
end;

procedure TF_SubGrupo.btn_novoClick(Sender: TObject);
var
  hoje: TDate;
begin
  inherited;
  DM.FDQ_Subgrupo.Refresh;
  DM.FDQ_Subgrupo.Insert;
  hoje := Now;
  ed_datacadastro.Text := EmptyStr + FormatDateTime('DD/MM/YYYY', hoje);
  radio_status.ItemIndex := 0;
  setCampos(true);
end;

procedure TF_SubGrupo.btn_salvarClick(Sender: TObject);
begin
  if (ed_nome.Text = '') then
  begin
    doColors(ed_nome.Name);
    showmessage('Campo nome não pode estar vazio!');
  end
  else if (combo_grupo.Text = '') then
  begin
    doColors(combo_grupo.Name);

    showmessage('Campo grupo não pode estar vazio!');
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
  else if (DM.FDQ_Subgrupo.Active = false) then
  begin
    doColors(ed_subgrupo.Name);
    showmessage('Não conectado!');
  end
  else if (isDuplicated() = true) then
  begin
    doColors(ed_subgrupo.Name);
    showmessage('Cadastro duplicado!');
  end
  else
  begin
    doColors('asdasdasd');

    DM.FDQ_Subgrupo.Post;
    DM.FDQ_Subgrupo.Refresh;
    setCampos(false);
    inherited;
  end;

end;

procedure TF_SubGrupo.combo_grupoExit(Sender: TObject);
begin
  if combo_grupo.Text <> '' then
  begin
    shape_grupo.Brush.Color := clGreen;
  end
  else
    shape_grupo.Brush.Color := clRed;

end;

procedure TF_SubGrupo.doColors(nome: String);
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

procedure TF_SubGrupo.doInitButtons(recordCount: integer);
begin
  if recordCount > 0 then
  begin
    btn_editar.Enabled := true;
  end;
end;

procedure TF_SubGrupo.ed_datacadastroChange(Sender: TObject);
begin
  if (isDateValid(ed_datacadastro.Text)) then
  begin
    shape_data.Brush.Color := clGreen;
  end
  else
    shape_data.Brush.Color := clRed;

end;

procedure TF_SubGrupo.ed_nomeChange(Sender: TObject);
begin
  if ed_nome.Text <> '' then
  begin
    shape_nome.Brush.Color := clGreen;
  end
  else
    shape_nome.Brush.Color := clRed;
end;

procedure TF_SubGrupo.ed_subgrupoChange(Sender: TObject);
begin
  if ed_subgrupo.Text <> '' then
  begin
    shape_id.Brush.Color := clGreen;
  end
  else
    shape_id.Brush.Color := clRed;
end;

procedure TF_SubGrupo.FormCreate(Sender: TObject);
begin
  btn_novo.Enabled := true;
  btn_editar.Enabled := false;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  doInitButtons(DM.FDQ_Subgrupo.recordCount);
end;

function TF_SubGrupo.isDateValid(Data: String): boolean;
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

function TF_SubGrupo.isDuplicated: boolean;
var
  resultado: boolean;
begin
  FDQ_Subgrupo_suporte.Refresh;
  if FDQ_Subgrupo_suporte.Locate('nome;id_grupo',
    VarArrayOf([ed_nome.Text, combo_grupo.KeyValue]), []) then
    resultado := true
  else
    resultado := false;
  result := resultado;
end;

procedure TF_SubGrupo.radio_statusChange(Sender: TObject);
begin
  if radio_status.ItemIndex <> -1 then
  begin
    shape_status.Brush.Color := clGreen;
  end
  else
    shape_status.Brush.Color := clRed;

end;

procedure TF_SubGrupo.setCampos(estado: boolean);
begin
  ed_nome.Enabled := estado;
  combo_grupo.Enabled := estado;
  radio_status.Enabled := estado;
  if estado = true then
    DBNavigator1.Enabled := false
  else
    DBNavigator1.Enabled := true;
end;

end.
