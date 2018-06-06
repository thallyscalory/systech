program SysTech;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal} ,
  U_dm in 'U_dm.pas' {DM: TDataModule} ,
  U_Modelo in 'U_Modelo.pas' {F_modelo} ,
  U_Cidade in 'U_Cidade.pas' {F_Cidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_modelo, F_modelo);
  Application.CreateForm(TF_Cidade, F_Cidade);
  Application.Run;

end.
