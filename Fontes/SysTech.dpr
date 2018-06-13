program SysTech;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {F_Principal},
  U_dm in 'U_dm.pas' {DM: TDataModule},
  U_modelo in 'U_modelo.pas' {F_modelo},
  U_Cidade in 'U_Cidade.pas' {F_Cidade},
  U_Referenciacomercial in 'U_Referenciacomercial.pas' {F_Referenciacomercial},
  U_SubGrupo in 'U_SubGrupo.pas' {F_SubGrupo},
  U_Cliente in 'U_Cliente.pas' {F_Cliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TF_Principal, F_Principal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TF_modelo, F_modelo);
  Application.CreateForm(TF_Cidade, F_Cidade);
  Application.CreateForm(TF_Referenciacomercial, F_Referenciacomercial);
  Application.CreateForm(TF_SubGrupo, F_SubGrupo);
  Application.CreateForm(TF_Cliente, F_Cliente);
  Application.Run;

end.
