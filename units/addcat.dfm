object frmCatAdd: TfrmCatAdd
  Left = 591
  Top = 191
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '#Title'
  ClientHeight = 267
  ClientWidth = 526
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
  object lblTitle: TLabel
    Left = 87
    Top = 24
    Width = 202
    Height = 15
    Caption = 'Include your category details below.'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = [fsBold, fsItalic]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object imgIcon: TImage
    Left = 31
    Top = 31
    Width = 32
    Height = 32
    AutoSize = True
  end
  object lblCatName: TLabeledEdit
    Left = 87
    Top = 96
    Width = 416
    Height = 23
    EditLabel.Width = 83
    EditLabel.Height = 15
    EditLabel.Caption = 'Category Name'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    TabOrder = 0
    Text = ''
    OnChange = lblCatNameChange
    OnKeyPress = lblCatNameKeyPress
  end
  object lblIcon: TStaticText
    Left = 87
    Top = 152
    Width = 78
    Height = 19
    Caption = 'Category Icon'
    TabOrder = 4
  end
  object cboIcons: TComboBox
    Left = 210
    Top = 150
    Width = 112
    Height = 31
    Style = csOwnerDrawVariable
    ItemHeight = 25
    TabOrder = 1
    OnDrawItem = cboIconsDrawItem
    OnMeasureItem = cboIconsMeasureItem
  end
  object cmdOK: TButton
    Left = 80
    Top = 208
    Width = 112
    Height = 38
    Caption = 'Add'
    Enabled = False
    TabOrder = 2
    OnClick = cmdOKClick
  end
  object cmdClose: TButton
    Left = 207
    Top = 208
    Width = 112
    Height = 38
    Caption = 'Close'
    TabOrder = 3
    OnClick = cmdCloseClick
  end
end
