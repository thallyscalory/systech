unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TF_Principal = class(TForm)
    FundoPrincipal: TImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_modelo, U_SubGrupo;

procedure TF_Principal.Button1Click(Sender: TObject);
begin
  F_modelo.showmodal;
end;

procedure TF_Principal.Button2Click(Sender: TObject);
begin
  F_SubGrupo.showmodal;
end;

end.
