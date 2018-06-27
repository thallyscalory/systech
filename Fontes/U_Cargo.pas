unit U_Cargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons;

type
  TF_Cargo = class(TF_modelo)
    Label_IDCargo: TLabel;
    Edit_IdCargo: TEdit;
    Label_NomeCargo: TLabel;
    Edit_NomeCargo: TEdit;
    DBRadioCargo: TDBRadioGroup;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    crud: string
    { Public declarations }
    end;

  var
    F_Cargo: TF_Cargo;

implementation

{$R *.dfm}

procedure TF_Cargo.btn_editarClick(Sender: TObject);
begin
  inherited;
  crud := 'Alterar';
end;

procedure TF_Cargo.btn_novoClick(Sender: TObject);
begin
  inherited;
  crud := 'Inserir';
end;

procedure TF_Cargo.btn_salvarClick(Sender: TObject);
var
  sql: string;
begin
  inherited;
  inherited;
  if crud = 'Inserir' then
  begin
    sql := 'insert into cargo (' + //
      ' id_cargo,' + //
      ' nome_cargo,' + //
      ' status)' + //
      'values(' + //
      IntToStr(1) + ',' + //
      QuotedStr(Edit_IdCargo.Text) + ',' + //
      QuotedStr(Edit_NomeCargo.Text) + ',' + //
      QuotedStr(DBRadioCargo.Values[DBRadioCargo.ItemIndex]) + ')';

    ShowMessage(sql);

  end
  else if crud = 'Alterar' then
  begin
    sql := 'update cidade set ' + //
      ' id_cargo = ' + QuotedStr(Edit_IdCargo.Text) + //
      ' ,nome_cargo = ' + QuotedStr(Edit_NomeCargo.Text) + //
      ' ,status = ' + QuotedStr(DBRadioCargo.Value);
  end;

end;

end.
