object frmAddLink: TfrmAddLink
  Left = 1043
  Top = 283
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'New'
  ClientHeight = 410
  ClientWidth = 529
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object ImgLogo: TImage
    Left = 25
    Top = 16
    Width = 32
    Height = 32
    AutoSize = True
  end
  object lblLinkTitle: TLabel
    Left = 72
    Top = 23
    Width = 326
    Height = 25
    Caption = 'Include your bookmarks details below.'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = [fsBold, fsItalic]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblLinkName: TLabeledEdit
    Left = 16
    Top = 93
    Width = 499
    Height = 23
    EditLabel.Width = 89
    EditLabel.Height = 15
    EditLabel.Caption = 'Bookmark Name'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    TabOrder = 0
    Text = ''
    OnChange = lblLinkNameChange
    OnKeyPress = lblLinkNameKeyPress
  end
  object lblLinkAddress: TLabeledEdit
    Left = 16
    Top = 173
    Width = 499
    Height = 23
    EditLabel.Width = 99
    EditLabel.Height = 15
    EditLabel.Caption = 'Bookmark Address'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    TabOrder = 1
    Text = 'http://'
    OnKeyPress = lblLinkAddressKeyPress
  end
  object cmdOK: TButton
    Left = 24
    Top = 352
    Width = 112
    Height = 38
    Caption = 'Add'
    Enabled = False
    TabOrder = 4
    OnClick = cmdOKClick
  end
  object cmdClose: TButton
    Left = 144
    Top = 352
    Width = 112
    Height = 38
    Caption = 'Close'
    TabOrder = 5
    OnClick = cmdCloseClick
  end
  object lblDescription: TLabeledEdit
    Left = 16
    Top = 248
    Width = 499
    Height = 23
    EditLabel.Width = 117
    EditLabel.Height = 15
    EditLabel.Caption = 'Bookmark Description'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    TabOrder = 2
    Text = ''
    OnKeyPress = lblDescriptionKeyPress
  end
  object StaticText1: TStaticText
    Left = 16
    Top = 296
    Width = 84
    Height = 19
    Caption = 'Bookmark Icon'
    TabOrder = 6
  end
  object cboIcons: TComboBox
    Left = 153
    Top = 293
    Width = 112
    Height = 31
    Style = csOwnerDrawVariable
    ItemHeight = 25
    TabOrder = 3
    OnDrawItem = cboIconsDrawItem
    OnMeasureItem = cboIconsMeasureItem
  end
end
