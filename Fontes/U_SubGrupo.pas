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
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure setCampos(estado: boolean);
    procedure doInitButtons(recordCount: integer);
    function isDuplicated(): boolean;
    procedure doColors(nome: String);
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
begin
  DM.FDQ_Subgrupo.Locate('nome', VarArrayOf(['%' + Edit1.Text + '%']), []);
end;

procedure TF_SubGrupo.btn_cancelarClick(Sender: TObject);
begin
  inherited;
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
    doColors('ed_nome');
    ShowMessage('Campo nome não pode estar vazio!');
  end
  else if (combo_grupo.Text = '') then
  begin
    doColors('combo_grupo');

    ShowMessage('Campo grupo não pode estar vazio!');
  end
  else if (ed_datacadastro.Text = '') then
  begin
    doColors('ed_datacadastro');
    ShowMessage('Data de cadastro vazia!');
  end
  else if (radio_status.ItemIndex = -1) then
  begin
    doColors('radio_status');
    ShowMessage('Status vazio!');
  end
  else if (DM.FDQ_Subgrupo.Active = false) then
  begin
    doColors('ed_subgrupo');
    ShowMessage('Não conectado!');
  end
  else if (isDuplicated() = true) then
  begin
    doColors('ed_subgrupo');
    ShowMessage('Cadastro duplicado!');
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

procedure TF_SubGrupo.doColors(nome: String);
var
  i: integer;
begin

  for i := 0 to Length(Components) do
  begin
    if Components[i] is TEdit then
    begin
      if (Components[i] as TEdit).Name = nome then
        (Components[i] as TEdit).Color := clRed
      else
        (Components[i] as TEdit).Color := clWhite;
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

procedure TF_SubGrupo.FormCreate(Sender: TObject);
begin
  btn_novo.Enabled := true;
  btn_editar.Enabled := false;
  btn_salvar.Enabled := false;
  btn_cancelar.Enabled := false;
  doInitButtons(DM.FDQ_Subgrupo.recordCount);
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
