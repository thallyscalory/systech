unit U_SubGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, U_modelo, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  TF_SubGrupo = class(TF_modelo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_SubGrupo: TF_SubGrupo;

implementation

{$R *.dfm}

end.
