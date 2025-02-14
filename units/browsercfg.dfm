object frmBrowsers: TfrmBrowsers
  Left = 756
  Top = 189
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Config Browsers'
  ClientHeight = 455
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object lblTitle: TLabel
    Left = 10
    Top = 9
    Width = 88
    Height = 15
    Caption = 'Internet Explorer'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblTitle1: TLabel
    Left = 12
    Top = 76
    Width = 80
    Height = 15
    Caption = 'Microsoft Edge'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblTitle2: TLabel
    Left = 12
    Top = 140
    Width = 78
    Height = 15
    Caption = 'Mozilla Firefox'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblTitle3: TLabel
    Left = 12
    Top = 204
    Width = 83
    Height = 15
    Caption = 'Google Chrome'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblTitle4: TLabel
    Left = 12
    Top = 268
    Width = 105
    Height = 15
    Caption = 'Opera Web Browser'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object Label1: TLabel
    Left = 10
    Top = 328
    Width = 144
    Height = 15
    Caption = 'Select your default browser'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object txtFileEd1: TSearchBox
    Left = 8
    Top = 31
    Width = 592
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnInvokeSearch = txtFileEd1InvokeSearch
  end
  object txtFileEd2: TSearchBox
    Left = 10
    Top = 98
    Width = 592
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnInvokeSearch = txtFileEd2InvokeSearch
  end
  object txtFileEd3: TSearchBox
    Left = 10
    Top = 162
    Width = 592
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnInvokeSearch = txtFileEd3InvokeSearch
  end
  object txtFileEd4: TSearchBox
    Left = 10
    Top = 226
    Width = 592
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    OnInvokeSearch = txtFileEd4InvokeSearch
  end
  object txtFileEd5: TSearchBox
    Left = 10
    Top = 290
    Width = 592
    Height = 23
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnInvokeSearch = txtFileEd5InvokeSearch
  end
  object cmdOK: TButton
    Left = 8
    Top = 408
    Width = 113
    Height = 38
    Caption = 'OK'
    TabOrder = 6
    OnClick = cmdOKClick
  end
  object cmdClose: TButton
    Left = 134
    Top = 408
    Width = 113
    Height = 38
    Caption = 'Close'
    TabOrder = 7
    OnClick = cmdCloseClick
  end
  object cboDefault: TComboBox
    Left = 8
    Top = 352
    Width = 193
    Height = 23
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 5
    Text = 'System Default'
    Items.Strings = (
      'System Default'
      'Internet Explorer'
      'Microsoft Edge'
      'Mozilla Firefox'
      'Google Chrome'
      'Opera Web Browser')
  end
  object OpenDialog1: TOpenDialog
    Left = 456
    Top = 65528
  end
end
