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
    Label1: TLabel;
    BTN_Cliente: TBitBtn;
    BTN_Fornecedor: TBitBtn;
    BTN_Colaborador: TBitBtn;
    Label2: TLabel;
    BTN_CReceber: TBitBtn;
    BTN_CPagar: TBitBtn;
    BTN_Caixa: TBitBtn;
    BTN_Compras: TBitBtn;
    BTN_Vendas: TBitBtn;
    Label3: TLabel;
    BTN_EEstoque: TBitBtn;
    BTN_SEstoque: TBitBtn;
    Label4: TLabel;
    BTN_RVendas: TBitBtn;
    BTN_RFinanceiro: TBitBtn;
    BTN_RCadastro: TBitBtn;
    BTN_REstoque: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_modelo, U_Cidade;

procedure TF_Principal.Button1Click(Sender: TObject);
begin
  F_Cidade.ShowModal;
end;

end.
