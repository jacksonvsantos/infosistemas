object FrmTelaCadCliente: TFrmTelaCadCliente
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Tela Cadastro Cliente'
  ClientHeight = 416
  ClientWidth = 732
  Color = clBtnFace
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 732
    Height = 416
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 754
      Top = 72
      Width = 17
      Height = 13
      Caption = 'cep'
      FocusControl = DBEdit1
      Visible = False
    end
    object Label2: TLabel
      Left = 754
      Top = 112
      Width = 52
      Height = 13
      Caption = 'logradouro'
      FocusControl = DBEdit2
      Visible = False
    end
    object Label3: TLabel
      Left = 754
      Top = 152
      Width = 63
      Height = 13
      Caption = 'complemento'
      FocusControl = DBEdit3
      Visible = False
    end
    object Label4: TLabel
      Left = 754
      Top = 192
      Width = 28
      Height = 13
      Caption = 'bairro'
      FocusControl = DBEdit4
      Visible = False
    end
    object Label5: TLabel
      Left = 754
      Top = 232
      Width = 47
      Height = 13
      Caption = 'localidade'
      FocusControl = DBEdit5
      Visible = False
    end
    object Label6: TLabel
      Left = 754
      Top = 272
      Width = 10
      Height = 13
      Caption = 'uf'
      FocusControl = DBEdit6
      Visible = False
    end
    object DBEdit1: TDBEdit
      Left = 754
      Top = 88
      Width = 300
      Height = 21
      DataField = 'cep'
      DataSource = DataSource1
      ReadOnly = True
      TabOrder = 0
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 754
      Top = 128
      Width = 300
      Height = 21
      DataField = 'logradouro'
      DataSource = DataSource1
      TabOrder = 1
      Visible = False
    end
    object DBEdit3: TDBEdit
      Left = 754
      Top = 168
      Width = 300
      Height = 21
      DataField = 'complemento'
      DataSource = DataSource1
      TabOrder = 2
      Visible = False
    end
    object DBEdit4: TDBEdit
      Left = 754
      Top = 208
      Width = 300
      Height = 21
      DataField = 'bairro'
      DataSource = DataSource1
      TabOrder = 3
      Visible = False
    end
    object DBEdit5: TDBEdit
      Left = 754
      Top = 248
      Width = 300
      Height = 21
      DataField = 'localidade'
      DataSource = DataSource1
      TabOrder = 4
      Visible = False
    end
    object DBEdit6: TDBEdit
      Left = 754
      Top = 291
      Width = 300
      Height = 21
      DataField = 'uf'
      DataSource = DataSource1
      TabOrder = 5
      Visible = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 14
      Width = 721
      Height = 142
      Caption = 'Dados Pessoais'
      TabOrder = 6
      object Label8: TLabel
        Left = 8
        Top = 29
        Width = 78
        Height = 13
        Caption = 'Nome do Cliente'
      end
      object Label9: TLabel
        Left = 8
        Top = 88
        Width = 52
        Height = 13
        Caption = 'Identidade'
      end
      object Label10: TLabel
        Left = 103
        Top = 88
        Width = 19
        Height = 13
        Caption = 'CPF'
      end
      object Label11: TLabel
        Left = 206
        Top = 88
        Width = 42
        Height = 13
        Caption = 'Telefone'
      end
      object Label12: TLabel
        Left = 333
        Top = 88
        Width = 28
        Height = 13
        Caption = 'e-mail'
      end
      object Edit2: TEdit
        Left = 8
        Top = 45
        Width = 703
        Height = 21
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 8
        Top = 104
        Width = 89
        Height = 21
        TabOrder = 1
      end
      object Edit4: TEdit
        Left = 103
        Top = 104
        Width = 97
        Height = 21
        TabOrder = 2
      end
      object Edit5: TEdit
        Left = 206
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Edit6: TEdit
        Left = 333
        Top = 104
        Width = 378
        Height = 21
        TabOrder = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 162
      Width = 721
      Height = 177
      Caption = 'Endere'#231'o'
      TabOrder = 7
      object Label7: TLabel
        Left = 8
        Top = 23
        Width = 19
        Height = 13
        Caption = 'CEP'
      end
      object Label13: TLabel
        Left = 8
        Top = 71
        Width = 55
        Height = 13
        Caption = 'Logradouro'
      end
      object Label14: TLabel
        Left = 471
        Top = 71
        Width = 37
        Height = 13
        Caption = 'N'#250'mero'
      end
      object Label15: TLabel
        Left = 534
        Top = 71
        Width = 65
        Height = 13
        Caption = 'Complemento'
      end
      object Label16: TLabel
        Left = 6
        Top = 127
        Width = 28
        Height = 13
        Caption = 'Bairro'
      end
      object Label17: TLabel
        Left = 254
        Top = 127
        Width = 33
        Height = 13
        Caption = 'Cidade'
      end
      object Label18: TLabel
        Left = 471
        Top = 127
        Width = 33
        Height = 13
        Caption = 'Estado'
      end
      object Label19: TLabel
        Left = 534
        Top = 127
        Width = 19
        Height = 13
        Caption = 'Pa'#237's'
      end
      object Edit1: TEdit
        Left = 8
        Top = 39
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Button1: TButton
        Left = 135
        Top = 37
        Width = 73
        Height = 25
        Hint = 'Consultar CEP'
        Caption = 'Buscar'
        TabOrder = 1
        OnClick = Button1Click
      end
      object Edit7: TEdit
        Left = 8
        Top = 87
        Width = 457
        Height = 21
        TabOrder = 2
      end
      object Edit8: TEdit
        Left = 471
        Top = 87
        Width = 57
        Height = 21
        TabOrder = 3
      end
      object Edit9: TEdit
        Left = 534
        Top = 87
        Width = 177
        Height = 21
        TabOrder = 4
      end
      object Edit10: TEdit
        Left = 6
        Top = 143
        Width = 242
        Height = 21
        TabOrder = 5
      end
      object Edit11: TEdit
        Left = 254
        Top = 143
        Width = 211
        Height = 21
        TabOrder = 6
      end
      object Edit12: TEdit
        Left = 471
        Top = 143
        Width = 57
        Height = 21
        TabOrder = 7
      end
      object ComboBox1: TComboBox
        Left = 534
        Top = 143
        Width = 177
        Height = 21
        TabOrder = 8
        Items.Strings = (
          'Afeganist'#227'o'#9
          #193'frica do Sul'#9
          'Alb'#226'nia'#9
          'Alemanha'#9
          'Andorra'#9
          'Angola'#9
          'Antiga e Barbuda'#9
          'Ar'#225'bia Saudita'#9
          'Arg'#233'lia'#9
          'Argentina'#9
          'Arm'#233'nia'#9
          'Austr'#225'lia'#9
          #193'ustria'#9
          'Azerbaij'#227'o'#9
          'Bahamas'#9
          'Bangladexe'#9
          'Barbados'#9
          'Bar'#233'm'#9
          'B'#233'lgica'#9
          'Belize'#9
          'Benim'#9
          'Bielorr'#250'ssia'#9
          'Bol'#237'via'#9
          'B'#243'snia e Herzegovina'#9
          'Botsuana'#9
          'Brasil'#9
          'Brunei'#9
          'Bulg'#225'ria'#9
          'Burquina Faso'#9
          'Bur'#250'ndi'#9
          'But'#227'o'#9
          'Cabo Verde'#9
          'Camar'#245'es'#9
          'Camboja'#9
          'Canad'#225#9
          'Catar'#9
          'Cazaquist'#227'o'#9
          'Chade'#9
          'Chile'#9
          'China'#9
          'Chipre'#9
          'Col'#244'mbia'#9
          'Comores'#9
          'Congo-Brazzaville'#9
          'Coreia do Norte'#9
          'Coreia do Sul'#9
          'Cosovo'#9
          'Costa do Marfim'#9
          'Costa Rica'#9
          'Cro'#225'cia'#9
          'Cuaite'#9
          'Cuba'#9
          'Dinamarca'#9
          'Dominica'#9
          'Egito'#9
          'Emirados '#193'rabes Unidos'#9
          'Equador'#9
          'Eritreia'#9
          'Eslov'#225'quia'#9
          'Eslov'#233'nia'#9
          'Espanha'#9
          'Estado da Palestina'#9
          'Estados Unidos'#9
          'Est'#243'nia'#9
          'Eti'#243'pia'#9
          'Fiji'#9
          'Filipinas'#9
          'Finl'#226'ndia'#9
          'Fran'#231'a'#9
          'Gab'#227'o'#9
          'G'#226'mbia'#9
          'Gana'#9
          'Ge'#243'rgia'#9
          'Granada'#9
          'Gr'#233'cia'#9
          'Guatemala'#9
          'Guiana'#9
          'Guin'#233#9
          'Guin'#233' Equatorial'#9
          'Guin'#233'-Bissau'#9
          'Haiti'#9
          'Honduras'#9
          'Hungria'#9
          'I'#233'men'#9
          'Ilhas Marechal'#9
          #205'ndia'#9
          'Indon'#233'sia'#9
          'Ir'#227'o'#9
          'Iraque'#9
          'Irlanda'#9
          'Isl'#226'ndia'#9
          'Israel'#9
          'It'#225'lia'#9
          'Jamaica'#9
          'Jap'#227'o'#9
          'Jibuti'#9
          'Jord'#226'nia'#9
          'Laus'#9
          'Lesoto'#9
          'Let'#243'nia'#9
          'L'#237'bano'#9
          'Lib'#233'ria'#9
          'L'#237'bia'#9
          'Listenstaine'#9
          'Litu'#226'nia'#9
          'Luxemburgo'#9
          'Maced'#243'nia'#9
          'Madag'#225'scar'#9
          'Mal'#225'sia'#9
          'Mal'#225'ui'#9
          'Maldivas'#9
          'Mali'#9
          'Malta'#9
          'Marrocos'#9
          'Maur'#237'cia'#9
          'Maurit'#226'nia'#9
          'M'#233'xico'#9
          'Mianmar'#9
          'Micron'#233'sia'#9
          'Mo'#231'ambique'#9
          'Mold'#225'via'#9
          'M'#243'naco'#9
          'Mong'#243'lia'#9
          'Montenegro'#9
          'Nam'#237'bia'#9
          'Nauru'#9
          'Nepal'#9
          'Nicar'#225'gua'#9
          'N'#237'ger'#9
          'Nig'#233'ria'#9
          'Noruega'#9
          'Nova Zel'#226'ndia'#9
          'Om'#227#9
          'Pa'#237'ses Baixos'#9
          'Palau'#9
          'Panam'#225#9
          'Papua Nova Guin'#233#9
          'Paquist'#227'o'#9
          'Paraguai'#9
          'Peru'#9
          'Pol'#243'nia'#9
          'Portugal'#9
          'Qu'#233'nia'#9
          'Quirguist'#227'o'#9
          'Quirib'#225'ti'#9
          'Reino Unido'#9
          'Rep'#250'blica Centro-Africana'#9
          'Rep'#250'blica Checa'#9
          'Rep'#250'blica Democr'#225'tica do Congo'#9
          'Rep'#250'blica Dominicana'#9
          'Rom'#233'nia'#9
          'Ruanda'#9
          'R'#250'ssia'#9
          'Salom'#227'o'#9
          'Salvador'#9
          'Samoa'#9
          'Santa L'#250'cia'#9
          'S'#227'o Crist'#243'v'#227'o e Neves'#9
          'S'#227'o Marinho'#9
          'S'#227'o Tom'#233' e Pr'#237'ncipe'#9
          'S'#227'o Vicente e Granadinas'#9
          'Seicheles'#9
          'Senegal'#9
          'Serra Leoa'#9
          'S'#233'rvia'#9
          'Singapura'#9
          'S'#237'ria'#9
          'Som'#225'lia'#9
          'Sri Lanca'#9
          'Suazil'#226'ndia'#9
          'Sud'#227'o'#9
          'Sud'#227'o do Sul'#9
          'Su'#233'cia'#9
          'Su'#237#231'a'#9
          'Suriname'#9
          'Tail'#226'ndia'#9
          'Taiu'#227#9
          'Tajiquist'#227'o'#9
          'Tanz'#226'nia'#9
          'Timor-Leste'#9
          'Togo'#9
          'Tonga'#9
          'Trindade e Tobago'#9
          'Tun'#237'sia'#9
          'Turcomenist'#227'o'#9
          'Turquia'#9
          'Tuvalu'#9
          'Ucr'#226'nia'#9
          'Uganda'#9
          'Uruguai'#9
          'Usbequist'#227'o'#9
          'Vanuatu'#9
          'Vaticano'#9
          'Venezuela'#9
          'Vietname'#9
          'Z'#226'mbia'#9
          'Zimb'#225'bue'#9)
      end
    end
    object Button3: TButton
      Left = 16
      Top = 353
      Width = 114
      Height = 40
      Caption = 'Enviar por e-mail'
      TabOrder = 8
      OnClick = Button3Click
    end
    object Button2: TButton
      Left = 584
      Top = 353
      Width = 135
      Height = 40
      Hint = 'Sair do Cadastro'
      Caption = 'Sair'
      TabOrder = 9
      OnClick = Button2Click
    end
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://viacep.com.br'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 856
    Top = 16
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'formato'
        Value = 'json'
      end
      item
        Kind = pkURLSEGMENT
        Name = 'cep'
        Value = '32241280'
      end>
    Resource = 'ws/{cep}/{formato}'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 856
    Top = 72
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 856
    Top = 128
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = FDMemTable1
    FieldDefs = <>
    Response = RESTResponse1
    Left = 856
    Top = 176
  end
  object FDMemTable1: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'cep'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'logradouro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'complemento'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'bairro'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'localidade'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ibge'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'gia'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'ddd'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'siafi'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 856
    Top = 232
    object FDMemTable1cep: TWideStringField
      FieldName = 'cep'
      Size = 255
    end
    object FDMemTable1logradouro: TWideStringField
      FieldName = 'logradouro'
      Size = 255
    end
    object FDMemTable1complemento: TWideStringField
      FieldName = 'complemento'
      Size = 255
    end
    object FDMemTable1bairro: TWideStringField
      FieldName = 'bairro'
      Size = 255
    end
    object FDMemTable1localidade: TWideStringField
      FieldName = 'localidade'
      Size = 255
    end
    object FDMemTable1uf: TWideStringField
      FieldName = 'uf'
      Size = 255
    end
    object FDMemTable1ibge: TWideStringField
      FieldName = 'ibge'
      Size = 255
    end
    object FDMemTable1gia: TWideStringField
      FieldName = 'gia'
      Size = 255
    end
    object FDMemTable1ddd: TWideStringField
      FieldName = 'ddd'
      Size = 255
    end
    object FDMemTable1siafi: TWideStringField
      FieldName = 'siafi'
      Size = 255
    end
  end
  object DataSource1: TDataSource
    DataSet = FDMemTable1
    Left = 856
    Top = 280
  end
  object XMLDocument1: TXMLDocument
    Left = 152
    Top = 354
  end
end
