unit U_Cidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_Modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWCompListbox, IWDBStdCtrls;

type
  TF_Cidade = class(TF_modelo)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit5: TEdit;
    IWDBLookupComboBox1: TIWDBLookupComboBox;
    Label6: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Cidade: TF_Cidade;
  crud: string;

implementation

{$R *.dfm}

procedure TF_Cidade.btn_editarClick(Sender: TObject);
begin
  inherited;
  crud := 'Alterar';
end;

procedure TF_Cidade.btn_novoClick(Sender: TObject);
begin
  inherited;
  crud := 'Inserir';
end;

procedure TF_Cidade.btn_salvarClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  if crud = 'Inserir' then
  begin
    sql := 'insert into cidade (' + //
      ' id_cidade,' + //
      ' nome,' + //
      ' id_estado,' + //
      ' ibge,' + //
      ' status)' + //
      'values(' + //
      IntToStr(1) + ',' + //
      QuotedStr(Edit3.Text) + ',' + //
      QuotedStr(IWDBLookupComboBox1.KeyValue) + ',' + //
      QuotedStr(Edit5.Text) + ',' + //
      QuotedStr(DBRadioGroup1.Values[DBRadioGroup1.ItemIndex]) + ')';

    ShowMessage(sql);

  end
  else if crud = 'Alterar' then
  begin
    sql := 'update cidade set ' + //
      ' id_cidade = ' + QuotedStr(Edit3.Text) + //
      ' ,nome = ' + QuotedStr(Edit3.Text) + //
      ' ,id_estado = ' + QuotedStr(Edit3.Text) + //
      ' ,ibge = ' + QuotedStr(Edit3.Text) + //
      ' ,status = ' + QuotedStr(Edit3.Text);
  end;
end;

procedure TF_Cidade.Button1Click(Sender: TObject);
begin
  inherited;
  ShowMessage(DBRadioGroup1.Values[DBRadioGroup1.ItemIndex]);
end;

end.
