unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TF_Principal = class(TForm)
    BTN_Caixa: TBitBtn;
    BTN_Cliente: TBitBtn;
    BTN_Colaborador: TBitBtn;
    BTN_Compras: TBitBtn;
    BTN_CPagar: TBitBtn;
    BTN_CReceber: TBitBtn;
    BTN_EEstoque: TBitBtn;
    BTN_Fornecedor: TBitBtn;
    BTN_RCadastro: TBitBtn;
    BTN_REstoque: TBitBtn;
    BTN_RFinanceiro: TBitBtn;
    BTN_RVendas: TBitBtn;
    BTN_SEstoque: TBitBtn;
    BTN_Vendas: TBitBtn;
    FundoPrincipal: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Principal: TF_Principal;

implementation

{$R *.dfm}

uses U_modelo, U_Cidade, U_Referenciacomercial;

procedure TF_Principal.Button1Click(Sender: TObject);
begin
     F_Referenciacomercial.ShowModal;
end;

end.
