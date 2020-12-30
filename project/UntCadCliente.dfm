object FrmTelaCadCliente: TFrmTelaCadCliente
  Left = 0
  Top = 0
  Anchors = [akLeft, akTop, akRight]
  BiDiMode = bdLeftToRight
  BorderStyle = bsToolWindow
  Caption = 'Tela Cadastro Cliente'
  ClientHeight = 426
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDesktopCenter
  Visible = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 426
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
        Width = 78
        Height = 13
        Caption = 'Telefone Celular'
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
        AutoSelect = False
        AutoSize = False
        CharCase = ecUpperCase
        TabOrder = 0
      end
      object Edit3: TEdit
        Left = 8
        Top = 104
        Width = 89
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyPress = Edit3KeyPress
      end
      object Edit4: TEdit
        Left = 103
        Top = 104
        Width = 97
        Height = 21
        TabOrder = 2
        OnKeyPress = Edit4KeyPress
      end
      object Edit5: TEdit
        Left = 206
        Top = 104
        Width = 121
        Height = 21
        TabOrder = 3
        OnKeyPress = Edit5KeyPress
      end
      object Edit6: TEdit
        Left = 333
        Top = 104
        Width = 378
        Height = 21
        CharCase = ecLowerCase
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
        OnExit = Edit1Exit
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
        CharCase = ecUpperCase
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
        CharCase = ecUpperCase
        TabOrder = 4
        OnExit = Edit9Exit
      end
      object Edit10: TEdit
        Left = 6
        Top = 143
        Width = 242
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 5
      end
      object Edit11: TEdit
        Left = 254
        Top = 143
        Width = 211
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 6
      end
      object Edit12: TEdit
        Left = 471
        Top = 143
        Width = 57
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 7
      end
      object ComboBox1: TComboBox
        Left = 534
        Top = 143
        Width = 177
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 8
        Items.Strings = (
          'AFEGANIST'#195'O'#9
          #193'FRICA DO SUL'#9
          'ALB'#194'NIA'#9
          'ALEMANHA'#9
          'ANDORRA'#9
          'ANGOLA'#9
          'ANTIGA E BARBUDA'#9
          'AR'#193'BIA SAUDITA'#9
          'ARG'#201'LIA'#9
          'ARGENTINA'#9
          'ARM'#201'NIA'#9
          'AUSTR'#193'LIA'#9
          #193'USTRIA'#9
          'AZERBAIJ'#195'O'#9
          'BAHAMAS'#9
          'BANGLADEXE'#9
          'BARBADOS'#9
          'BAR'#201'M'#9
          'B'#201'LGICA'#9
          'BELIZE'#9
          'BENIM'#9
          'BIELORR'#218'SSIA'#9
          'BOL'#205'VIA'#9
          'B'#211'SNIA E HERZEGOVINA'#9
          'BOTSUANA'#9
          'BRASIL'#9
          'BRUNEI'#9
          'BULG'#193'RIA'#9
          'BURQUINA FASO'#9
          'BUR'#218'NDI'#9
          'BUT'#195'O'#9
          'CABO VERDE'#9
          'CAMAR'#213'ES'#9
          'CAMBOJA'#9
          'CANAD'#193#9
          'CATAR'#9
          'CAZAQUIST'#195'O'#9
          'CHADE'#9
          'CHILE'#9
          'CHINA'#9
          'CHIPRE'#9
          'COL'#212'MBIA'#9
          'COMORES'#9
          'CONGO-BRAZZAVILLE'#9
          'COREIA DO NORTE'#9
          'COREIA DO SUL'#9
          'COSOVO'#9
          'COSTA DO MARFIM'#9
          'COSTA RICA'#9
          'CRO'#193'CIA'#9
          'CUAITE'#9
          'CUBA'#9
          'DINAMARCA'#9
          'DOMINICA'#9
          'EGITO'#9
          'EMIRADOS '#193'RABES UNIDOS'#9
          'EQUADOR'#9
          'ERITREIA'#9
          'ESLOV'#193'QUIA'#9
          'ESLOV'#201'NIA'#9
          'ESPANHA'#9
          'ESTADO DA PALESTINA'#9
          'ESTADOS UNIDOS'#9
          'EST'#211'NIA'#9
          'ETI'#211'PIA'#9
          'FIJI'#9
          'FILIPINAS'#9
          'FINL'#194'NDIA'#9
          'FRAN'#199'A'#9
          'GAB'#195'O'#9
          'G'#194'MBIA'#9
          'GANA'#9
          'GE'#211'RGIA'#9
          'GRANADA'#9
          'GR'#201'CIA'#9
          'GUATEMALA'#9
          'GUIANA'#9
          'GUIN'#201#9
          'GUIN'#201' EQUATORIAL'#9
          'GUIN'#201'-BISSAU'#9
          'HAITI'#9
          'HONDURAS'#9
          'HUNGRIA'#9
          'I'#201'MEN'#9
          'ILHAS MARECHAL'#9
          #205'NDIA'#9
          'INDON'#201'SIA'#9
          'IR'#195'O'#9
          'IRAQUE'#9
          'IRLANDA'#9
          'ISL'#194'NDIA'#9
          'ISRAEL'#9
          'IT'#193'LIA'#9
          'JAMAICA'#9
          'JAP'#195'O'#9
          'JIBUTI'#9
          'JORD'#194'NIA'#9
          'LAUS'#9
          'LESOTO'#9
          'LET'#211'NIA'#9
          'L'#205'BANO'#9
          'LIB'#201'RIA'#9
          'L'#205'BIA'#9
          'LISTENSTAINE'#9
          'LITU'#194'NIA'#9
          'LUXEMBURGO'#9
          'MACED'#211'NIA'#9
          'MADAG'#193'SCAR'#9
          'MAL'#193'SIA'#9
          'MAL'#193'UI'#9
          'MALDIVAS'#9
          'MALI'#9
          'MALTA'#9
          'MARROCOS'#9
          'MAUR'#205'CIA'#9
          'MAURIT'#194'NIA'#9
          'M'#201'XICO'#9
          'MIANMAR'#9
          'MICRON'#201'SIA'#9
          'MO'#199'AMBIQUE'#9
          'MOLD'#193'VIA'#9
          'M'#211'NACO'#9
          'MONG'#211'LIA'#9
          'MONTENEGRO'#9
          'NAM'#205'BIA'#9
          'NAURU'#9
          'NEPAL'#9
          'NICAR'#193'GUA'#9
          'N'#205'GER'#9
          'NIG'#201'RIA'#9
          'NORUEGA'#9
          'NOVA ZEL'#194'NDIA'#9
          'OM'#195#9
          'PA'#205'SES BAIXOS'#9
          'PALAU'#9
          'PANAM'#193#9
          'PAPUA NOVA GUIN'#201#9
          'PAQUIST'#195'O'#9
          'PARAGUAI'#9
          'PERU'#9
          'POL'#211'NIA'#9
          'PORTUGAL'#9
          'QU'#201'NIA'#9
          'QUIRGUIST'#195'O'#9
          'QUIRIB'#193'TI'#9
          'REINO UNIDO'#9
          'REP'#218'BLICA CENTRO-AFRICANA'#9
          'REP'#218'BLICA CHECA'#9
          'REP'#218'BLICA DEMOCR'#193'TICA DO CONGO'#9
          'REP'#218'BLICA DOMINICANA'#9
          'ROM'#201'NIA'#9
          'RUANDA'#9
          'R'#218'SSIA'#9
          'SALOM'#195'O'#9
          'SALVADOR'#9
          'SAMOA'#9
          'SANTA L'#218'CIA'#9
          'S'#195'O CRIST'#211'V'#195'O E NEVES'#9
          'S'#195'O MARINHO'#9
          'S'#195'O TOM'#201' E PR'#205'NCIPE'#9
          'S'#195'O VICENTE E GRANADINAS'#9
          'SEICHELES'#9
          'SENEGAL'#9
          'SERRA LEOA'#9
          'S'#201'RVIA'#9
          'SINGAPURA'#9
          'S'#205'RIA'#9
          'SOM'#193'LIA'#9
          'SRI LANCA'#9
          'SUAZIL'#194'NDIA'#9
          'SUD'#195'O'#9
          'SUD'#195'O DO SUL'#9
          'SU'#201'CIA'#9
          'SU'#205#199'A'#9
          'SURINAME'#9
          'TAIL'#194'NDIA'#9
          'TAIU'#195#9
          'TAJIQUIST'#195'O'#9
          'TANZ'#194'NIA'#9
          'TIMOR-LESTE'#9
          'TOGO'#9
          'TONGA'#9
          'TRINDADE E TOBAGO'#9
          'TUN'#205'SIA'#9
          'TURCOMENIST'#195'O'#9
          'TURQUIA'#9
          'TUVALU'#9
          'UCR'#194'NIA'#9
          'UGANDA'#9
          'URUGUAI'#9
          'USBEQUIST'#195'O'#9
          'VANUATU'#9
          'VATICANO'#9
          'VENEZUELA'#9
          'VIETNAME'#9
          'Z'#194'MBIA'#9
          'ZIMB'#193'BUE'#9)
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
