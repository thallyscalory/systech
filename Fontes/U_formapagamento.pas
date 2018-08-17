unit U_formapagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TF_formapagamento = class(TF_modelo)
    Label2: TLabel;
    EDT_idformadepagamento: TEdit;
    Label3: TLabel;
    EDT_nomeformadepagamento: TEdit;
    DBR_statusformadepagamento: TDBRadioGroup;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_formapagamento: TF_formapagamento;
  crud: string;

implementation

{$R *.dfm}

procedure TF_formapagamento.btn_editarClick(Sender: TObject);
begin
  inherited;
    crud := 'Alterar';
end;

procedure TF_formapagamento.btn_novoClick(Sender: TObject);
begin
  inherited;
    crud := 'Inserir';
end;

procedure TF_formapagamento.btn_salvarClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
    if crud = 'Inserir' then
    begin
    sql := 'insert into formadepagamento (' + //
      ' id_formadepagamento,' + //
      ' status)' + //
      'values(' + //
      IntToStr(1) + ',' + //
      QuotedStr(EDT_idformadepagamento.Text) + ',' + //
      QuotedStr(EDT_nomeformadepagamento.Text) + ',' + //
      QuotedStr(DBR_statusformadepagamento.Value[DBR_statusformadepagamento.ItemIndex]) + ')';

    ShowMessage(sql);

  end
  else if crud = 'Alterar' then
  begin
    sql := 'update formadepagamento set ' + //
      ' id_formadepagamento = ' + QuotedStr(EDT_idformadepagamento.Text) + //
      ' ,nome = ' + QuotedStr(EDT_nomeformadepagamento.Text) + //
      ' ,status = ' + QuotedStr(DBR_statusformadepagamento.Value[DBR_statusformadepagamento.ItemIndex]);
  end;
end;
end.

