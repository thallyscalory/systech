unit U_Estado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TF_Estado = class(TForm)
    Panel1: TPanel;
    btn_novo: TBitBtn;
    btn_editar: TBitBtn;
    btn_salvar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_sair: TBitBtn;
    DBNavigator1: TDBNavigator;
    Consultar: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    EdtPesquisar: TEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit5: TEdit;
    Label4: TLabel;
    Edit6: TEdit;
    RadioGroup1: TRadioGroup;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_sairClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    crud: String;
  end;

var
  F_Estado: TF_Estado;

implementation

{$R *.dfm}

uses U_dm;

procedure TF_Estado.btn_cancelarClick(Sender: TObject);
begin
 btn_novo.Enabled := True;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_sair.Enabled := True;
  TabSheet1.Show;

  Edit1.Text := EmptyStr;
  Edit5.Text := EmptyStr;
  Edit6.Text := EmptyStr;
  RadioGroup1.ItemIndex := EmptyParam;
  crud := EmptyStr;
  Edit1.Enabled := false;
  Edit5.Enabled := false;
  Edit6.Enabled := false;
  RadioGroup1.Enabled := false;
end;

procedure TF_Estado.btn_editarClick(Sender: TObject);
begin
btn_novo.Enabled := False;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := True;
  btn_cancelar.Enabled := True;
  btn_sair.Enabled := False;

  Edit1.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
  RadioGroup1.Enabled := True;
  crud := 'alterar';
  Edit1.SetFocus;
end;

procedure TF_Estado.btn_novoClick(Sender: TObject);
begin
btn_novo.Enabled := False;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := True;
  btn_cancelar.Enabled := True;
  btn_sair.Enabled := False;
  TabSheet2.Show;

  Edit1.Enabled := True;
  Edit5.Enabled := True;
  Edit6.Enabled := True;
  Edit5.Enabled := True;
  Edit1.SetFocus;
  crud := 'inserir';
end;

procedure TF_Estado.btn_sairClick(Sender: TObject);
begin
close;
end;

procedure TF_Estado.btn_salvarClick(Sender: TObject);
  var
sql: string;
  max: integer;
begin
btn_novo.Enabled := True;
  btn_editar.Enabled := False;
  btn_salvar.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_sair.Enabled := True;
  TabSheet1.Show;

  if crud = 'inserir' then
  begin
    DM.FDQ_Estado.close;
    DM.FDQ_Estado.Open();
    sql := 'insert into estado(' + //
    'id_estado, ' +//
    'nome, '+//
    'UF, '+//
    'status) '+//
    'values( '+//
      Edit1.Text + ',' + //
      QuotedStr(Edit5.Text) + ',' + //
      QuotedStr(Edit6.Text) + ',' +//
      QuotedStr(RadioGroup1.Items[RadioGroup1.ItemIndex]) + ')';
  end
  else
  begin
    sql := 'update estado set ' + //
      ' nome=' + QuotedStr(Edit5.Text) + //
      ', UF=' + QuotedStr(Edit6.Text) + //
      'status=' +  QuotedStr(RadioGroup1.Items[RadioGroup1.ItemIndex]) +//
      'where id_estado = ' + Edit1.Text;

  end;

  dm.FDQ_Estado.ExecSQL(sql);
  dm.FD_Conexao.CommitRetaining;

end;

end.
