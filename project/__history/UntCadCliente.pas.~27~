unit UntCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.Bind.Components, Data.Bind.ObjectScope, REST.Client, REST.Types,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, REST.Response.Adapter,
  System.json, Vcl.Mask, Vcl.DBCtrls, xml.XMLDoc, Xml.xmldom, Xml.XMLIntf,
  IdSMTP, IdSSLOpenSSL, IdMessage, IdText, IdAttachmentFile,
  IdExplicitTLSClientServerBase;

type
  TFrmTelaCadCliente = class(TForm)
    Panel1: TPanel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter;
    FDMemTable1: TFDMemTable;
    FDMemTable1cep: TWideStringField;
    FDMemTable1logradouro: TWideStringField;
    FDMemTable1complemento: TWideStringField;
    FDMemTable1bairro: TWideStringField;
    FDMemTable1localidade: TWideStringField;
    FDMemTable1uf: TWideStringField;
    FDMemTable1ibge: TWideStringField;
    FDMemTable1gia: TWideStringField;
    FDMemTable1ddd: TWideStringField;
    FDMemTable1siafi: TWideStringField;
    DataSource1: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    Edit3: TEdit;
    Label10: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit6: TEdit;
    GroupBox2: TGroupBox;
    Label7: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label13: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Label14: TLabel;
    Edit9: TEdit;
    Label15: TLabel;
    Edit10: TEdit;
    Label16: TLabel;
    Edit11: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit12: TEdit;
    Label19: TLabel;
    ComboBox1: TComboBox;
    Button3: TButton;
    Button2: TButton;
    XMLDocument1: TXMLDocument;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Edit9Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTelaCadCliente: TFrmTelaCadCliente;

implementation

{$R *.dfm}

procedure TFrmTelaCadCliente.Button1Click(Sender: TObject);
begin
 if (Edit1.Text = '') then
    begin
     ShowMessage('Campo CEP do cliente deve ser preenchido, verifique!');
     Edit1.SetFocus;
     exit;
    end else
     begin
      RESTRequest1.Params.ParameterByName('cep').Value :=  Edit1.Text;    // parametro com cep para busca
      RESTRequest1.execute;
     end;

 if DBEdit1.Text <> '' then
    begin
      edit7.Text  := DBEdit2.Text;     // logradouro encontrado
      edit10.Text := DBEdit4.Text;     // bairro encontrado
      edit11.Text  := DBEdit5.Text;    // cidade encontrado
      edit12.Text  := DBEdit6.Text;    // estado encontrado
      edit1.text := copy(edit1.text,1,2)
                     + '.' +copy(edit1.text,3,3)
                      + '-' +copy(edit1.text,6,3);
      edit8.SetFocus;
    end else
      begin
        ShowMessage('CEP informado não localizado, verifique!');
        edit1.SetFocus;
      end;
end;

procedure TFrmTelaCadCliente.Button2Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmTelaCadCliente.Button3Click(Sender: TObject);
Var
 // variáveis e objetos necessários para o xml
 Raiz, Nome, NomeAttrib, Identidade, CPF, Telefone, Email,
 Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP, Pais,
 Ver, PowerBy: IXMLNode;

 // variáveis e objetos necessários para o envio
 IdSSLIOHandlerSocket: TIdSSLIOHandlerSocketOpenSSL;
 IdSMTP: TIdSMTP;
 IdMessage: TIdMessage;
 IdText: TIdText;
 sAnexo: string;

begin
  if (Edit2.Text = '') then
     begin
      ShowMessage('Campo Nome do cliente deve ser preenchido, verifique!');
      Edit2.SetFocus;
      exit;
     end;

  if (Edit3.Text = '') then
     begin
      ShowMessage('Campo Identidade do cliente deve ser preenchido, verifique!');
      Edit3.SetFocus;
      exit;
     end;

  if (Edit4.Text = '') then
     begin
      ShowMessage('Campo CPF do cliente deve ser preenchido, verifique!');
      Edit4.SetFocus;
      exit;
     end;

  if (Edit5.Text = '') then
     begin
      ShowMessage('Campo Telefone do cliente deve ser preenchido, verifique!');
      Edit5.SetFocus;
      exit;
     end;

   if (Edit6.Text = '') then
     begin
      ShowMessage('Campo e-mail do cliente deve ser preenchido, verifique!');
      Edit6.SetFocus;
      exit;
     end;

    if (Edit1.Text = '') then
     begin
      ShowMessage('Campo CEP do cliente deve ser preenchido, verifique!');
      Edit1.SetFocus;
      exit;
     end;

    if (Edit7.Text = '') then
     begin
      ShowMessage('Campo Logradouro do cliente deve ser preenchido, verifique!');
      Edit7.SetFocus;
      exit;
     end;

     if (Edit8.Text = '') then
     begin
      ShowMessage('Campo Número do cliente deve ser preenchido, verifique!');
      Edit8.SetFocus;
      exit;
     end;

     if (Edit10.Text = '') then
     begin
      ShowMessage('Campo Bairro do cliente deve ser preenchido, verifique!');
      Edit10.SetFocus;
      exit;
     end;

     if (Edit11.Text = '') then
     begin
      ShowMessage('Campo Cidade do cliente deve ser preenchido, verifique!');
      Edit11.SetFocus;
      exit;
     end;

     if (Edit12.Text = '') then
     begin
      ShowMessage('Campo UF do cliente deve ser preenchido, verifique!');
      Edit12.SetFocus;
      exit;
     end;

      if (ComboBox1.Text = '') then
     begin
      ShowMessage('Campo País do cliente deve ser preenchido, verifique!');
      ComboBox1.SetFocus;
      exit;
     end;

  XMLDocument1.FileName := '';
  XMLDocument1.XML.Text := '';
  XMLDocument1.Active := False;
  XMLDocument1.Active := True;
  XMLDocument1.Version := '1.0';
  XMLDocument1.Encoding := 'UTF-8';

  // RAIZ
  Raiz := XMLDocument1.AddChild('RAIZ');

  // Desenvolvido por
  PowerBy := XMLDocument1.CreateNode('DESENVOLVEDOR', ntAttribute);
  PowerBy.Text := 'INFOSISTEMAS';
  Raiz.AttributeNodes.Add(PowerBy);

  // VERSÃO
  Ver     := XMLDocument1.CreateNode('VERSION', ntAttribute);
  Ver.Text := '1.0';
  Raiz.AttributeNodes.Add(ver);

  // INICIO
  Nome := XMLDocument1.CreateNode('INICIO', ntElement);
  Raiz.ChildNodes.Add(Nome);

  // ENDERECO
  CEP := XMLDocument1.CreateNode('CEP', ntAttribute);
  CEP.Text := Edit1.Text;
  Nome.AttributeNodes.Add(CEP);

  Pais := XMLDocument1.CreateNode('PAÍS', ntAttribute);
  Pais.Text := ComboBox1.Text;
  Nome.AttributeNodes.Add(Pais);

  UF := XMLDocument1.CreateNode('UF', ntAttribute);
  UF.Text := Edit12.Text;
  Nome.AttributeNodes.Add(UF);

  Cidade := XMLDocument1.CreateNode('CIDADE', ntAttribute);
  Cidade.Text := Edit11.Text;
  Nome.AttributeNodes.Add(Cidade);

  Bairro := XMLDocument1.CreateNode('BAIRRO', ntAttribute);
  Bairro.Text := Edit10.Text;
  Nome.AttributeNodes.Add(Bairro);

  Complemento := XMLDocument1.CreateNode('COMPLEMENTO', ntAttribute);
  Complemento.Text := Edit9.Text;
  Nome.AttributeNodes.Add(Complemento);

  Numero := XMLDocument1.CreateNode('NUMERO', ntAttribute);
  Numero.Text := Edit8.Text;
  Nome.AttributeNodes.Add(Numero);

  Logradouro := XMLDocument1.CreateNode('LOGRADOURO', ntAttribute);
  Logradouro.Text := Edit7.Text;
  Nome.AttributeNodes.Add(Logradouro);


  // DADOS DO CLIENTE
  Email := XMLDocument1.CreateNode('EMAIL', ntAttribute);
  Email.Text := Edit6.Text;
  Nome.AttributeNodes.Add(Email);

  Telefone := XMLDocument1.CreateNode('TELEFONE', ntAttribute);
  Telefone.Text := Edit5.Text;
  Nome.AttributeNodes.Add(Telefone);

  CPF := XMLDocument1.CreateNode('CPF', ntAttribute);
  CPF.Text := Edit4.Text;
  Nome.AttributeNodes.Add(CPF);

  Identidade := XMLDocument1.CreateNode('IDENTIDADE', ntAttribute);
  Identidade.Text := Edit3.Text;
  Nome.AttributeNodes.Add(Identidade);

  NomeAttrib := XMLDocument1.CreateNode('NOME', ntAttribute);
  NomeAttrib.Text := Edit2.Text;
  Nome.AttributeNodes.Add(NomeAttrib);

  XMLDocument1.SaveToFile('xml_cadastro_cliente.xml');
  XMLDocument1.Active := False;

  // instanciação dos objetos  de envio do email
  IdSSLIOHandlerSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Self);
  IdSMTP := TIdSMTP.Create(Self);
  IdMessage := TIdMessage.Create(Self);

  try
    // Configuração do protocolo SSL (TIdSSLIOHandlerSocketOpenSSL)
    IdSSLIOHandlerSocket.SSLOptions.Method := sslvSSLv23;
    IdSSLIOHandlerSocket.SSLOptions.Mode := sslmClient;

    // Configuração do servidor SMTP (TIdSMTP)
    IdSMTP.IOHandler := IdSSLIOHandlerSocket;
    IdSMTP.UseTLS := utUseImplicitTLS;
    IdSMTP.AuthType := satDefault;
    IdSMTP.Port := 465;
    IdSMTP.Host := 'smtp.gmail.com';
    IdSMTP.Username := 'emailparaenvio@gmail.com';
    IdSMTP.Password := 'senhadoemailparaenvio';

    // Configuração da mensagem (TIdMessage)
    IdMessage.From.Address := edit6.text;
    IdMessage.From.Name := 'Cadastro de Cliente - InfoSistemas';
    IdMessage.ReplyTo.EMailAddresses := IdMessage.From.Address;
    IdMessage.Recipients.Add.Text := edit6.text;
    IdMessage.Subject := 'Cadastro de Clientes';
    IdMessage.Encoding := meMIME;

    // Configuração do corpo do email (TIdText)
    IdText := TIdText.Create(IdMessage.MessageParts);
    IdText.Body.Add('Prezado, '+Edit2.text+', seu cadastro foi efetuado com sucesso. Segue em anexo a conformação do cadastro em xml.');
    IdText.ContentType := 'text/plain; charset=iso-8859-1';

    // Opcional - Anexo da mensagem (TIdAttachmentFile)
    sAnexo := 'C:\projetos\infosistemas\project\Win32\Debug\xml_cadastro_cliente.xml';
    if FileExists(sAnexo) then
    begin
      TIdAttachmentFile.Create(IdMessage.MessageParts, sAnexo);
    end;

    // Conexão e autenticação
    try
      IdSMTP.Connect;
      IdSMTP.Authenticate;
    except
      on E:Exception do
      begin
        MessageDlg('Erro na conexão ou autenticação: ' +
          E.Message, mtWarning, [mbOK], 0);
        Exit;
      end;
    end;

    // Envio da mensagem
    try
      IdSMTP.Send(IdMessage);
      ShowMessage('E-mail enviado com sucesso!');
    except
      On E:Exception do
      begin
       ShowMessage('Erro ao enviar o E-mail, verifique!');      end;
    end;
  finally
    // desconecta do servidor
    IdSMTP.Disconnect;
    // liberação da DLL
    UnLoadOpenSSLLibrary;
    // liberação dos objetos da memória
    FreeAndNil(IdMessage);
    FreeAndNil(IdSSLIOHandlerSocket);
    FreeAndNil(IdSMTP);
  end;

if Application.MessageBox('Deseja limpar o Cadastro ??','Aviso',MB_ICONQUESTION + MB_DEFBUTTON2 + MB_YESNO)= id_yes then
   begin
    // limpando campos
    edit1.Text := '';
    edit2.Text := '';
    edit3.Text := '';
    edit4.Text := '';
    edit5.Text := '';
    edit6.Text := '';
    edit7.Text := '';
    edit8.Text := '';
    edit9.Text := '';
    edit10.Text := '';
    edit11.Text := '';
    edit12.Text := '';
    ComboBox1.Text := '';
    edit2.SetFocus;
    exit;
   end else
    begin
     edit2.SetFocus;
     exit;
    end;
end;

procedure TFrmTelaCadCliente.Edit1Exit(Sender: TObject);
begin
 if (Edit1.Text = '') then
    begin
     ShowMessage('Campo CEP do cliente deve ser preenchido, verifique!');
     Edit1.SetFocus;
     exit;
    end else
     Button1.Click;
end;

procedure TFrmTelaCadCliente.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #8 then       // teclou backspace
      exit;

   if Length(Edit3.Text) = 2 then
      begin
         Edit3.Text := Edit3.Text + '-';
         Edit3.Selstart := Length(Edit3.text);
      end;

   if Length(Edit3.Text) = 4 then
      begin
         Edit3.Text := Edit3.Text + '.';
         Edit3.Selstart := Length(Edit3.text);
      end;

   if Length(Edit3.Text) = 8 then
      begin
         Edit3.Text := Edit3.Text + '.';
         Edit3.Selstart := Length(Edit3.text);
      end;

end;

procedure TFrmTelaCadCliente.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #8 then    // teclou backspace
      exit;

   if Length(Edit4.Text) = 3 then
      begin
         Edit4.Text := Edit4.Text + '.';
         Edit4.Selstart := Length(Edit4.text);
      end;

   if Length(Edit4.Text) = 7 then
      begin
         Edit4.Text := Edit4.Text + '.';
         Edit4.Selstart := Length(Edit4.text);
      end;

   if Length(Edit4.Text) = 11 then
      begin
         Edit4.Text := Edit4.Text + '-';
         Edit4.Selstart := Length(Edit4.text);
      end;
end;

procedure TFrmTelaCadCliente.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #8 then  // teclou backspace
      exit;

   if Length(Edit5.Text) = 0 then
      begin
         Edit5.Text := Edit5.Text + '(';
         Edit5.Selstart := Length(Edit5.text);
      end;

   if Length(Edit5.Text) = 3 then
      begin
         Edit5.Text := Edit5.Text + ')';
         Edit5.Selstart := Length(Edit5.text);
      end;

   if Length(Edit5.Text) = 4 then
      begin
         Edit5.Text := Edit5.Text + ' ';
         Edit5.Selstart := Length(Edit5.text);
      end;

   if Length(Edit5.Text) = 6 then
      begin
         Edit5.Text := Edit5.Text + ' ';
         Edit5.Selstart := Length(Edit5.text);
      end;

   if Length(Edit5.Text) = 11 then
      begin
         Edit5.Text := Edit5.Text + '-';
         Edit5.Selstart := Length(Edit5.text);
      end;
end;

procedure TFrmTelaCadCliente.Edit9Exit(Sender: TObject);
begin
 ComboBox1.Text := 'BRASIL';
 ComboBox1.SetFocus;
end;

procedure TFrmTelaCadCliente.FormShow(Sender: TObject);
begin
 edit2.SetFocus;
end;

end.
