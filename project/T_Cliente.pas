unit T_Cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EDNome: TEdit;
    EDIdentidade: TEdit;
    EDCPF: TEdit;
    EDTelefone: TEdit;
    EDEmail: TEdit;
    EDEndereco: TEdit;
    EDNumero: TEdit;
    EDComplemento: TEdit;
    EDBairro: TEdit;
    EDCidade: TEdit;
    EDCEP: TEdit;
    CBPais: TComboBox;
    CBEstado: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
