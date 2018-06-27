unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Menus;

type
  TF_Principal = class(TForm)
    FundoPrincipal: TImage;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Fornecedor1: TMenuItem;
    Funcionario1: TMenuItem;
    Produto1: TMenuItem;
    Cidade1: TMenuItem;
    Estado1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Grupo1: TMenuItem;
    SubGrupo1: TMenuItem;
    EntradaeSaidas1: TMenuItem;
    Venda1: TMenuItem;
    EntradadeEstoque1: TMenuItem;
    Financeiro1: TMenuItem;
    Caixa1: TMenuItem;
    ContasReceber1: TMenuItem;
    ContasPagar1: TMenuItem;
    ContaBanco1: TMenuItem;
    Panel1: TPanel;
    BTN_Caixa: TBitBtn;
    BTN_Cliente: TBitBtn;
    BTN_Colaborador: TBitBtn;
    BTN_Compras: TBitBtn;
    BTN_CPagar: TBitBtn;
    BTN_CReceber: TBitBtn;
    BTN_Fornecedor: TBitBtn;
    BTN_Vendas: TBitBtn;
    Consulta1: TMenuItem;
    Estoque1: TMenuItem;
    ReFerenciaComercial1: TMenuItem;
    BTN_Estoque: TBitBtn;
    BTN_Produto: TBitBtn;
    Sair1: TMenuItem;
    Cargo1: TMenuItem;
    procedure SubGrupo1Click(Sender: TObject);
    procedure ReFerenciaComercial1Click(Sender: TObject);
    procedure Cidade1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_modelo, U_Cidade, U_dm, U_Referenciacomercial, U_SubGrupo, U_Cargo,
  U_Estado;

procedure TF_Principal.Cidade1Click(Sender: TObject);
begin
F_Cidade.ShowModal;
end;

procedure TF_Principal.ReFerenciaComercial1Click(Sender: TObject);
begin
F_Referenciacomercial.ShowModal;
end;

procedure TF_Principal.Sair1Click(Sender: TObject);
begin
Close;
end;

procedure TF_Principal.SubGrupo1Click(Sender: TObject);
begin
F_SubGrupo.ShowModal;
end;

end.
