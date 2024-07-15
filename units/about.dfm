object frmAbout: TfrmAbout
  Left = 671
  Top = 349
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 245
  ClientWidth = 528
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object lblTitle: TLabel
    Left = 120
    Top = 26
    Width = 230
    Height = 42
    Caption = 'My Links XE2'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -36
    Font.Name = 'Arial Rounded MT Bold'
    Font.Pitch = fpVariable
    Font.Style = []
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblInfo: TLabel
    Left = 88
    Top = 104
    Width = 374
    Height = 28
    Caption = 'Free and Opensource Bookmarks Manager.'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -20
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = []
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblDevOp: TLabel
    Left = 35
    Top = 200
    Width = 288
    Height = 18
    Caption = 'Developed by Ben J a.k.a DreamVB'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Pitch = fpVariable
    Font.Style = [fsItalic]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object lblWebsite: TLabel
    Left = 176
    Top = 152
    Width = 146
    Height = 18
    Cursor = crHandPoint
    Caption = 'Visit Project Page'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Pitch = fpVariable
    Font.Style = [fsUnderline]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
    OnClick = lblWebsiteClick
    OnMouseEnter = lblWebsiteMouseEnter
    OnMouseLeave = lblWebsiteMouseLeave
  end
  object imgLogo: TImage
    Left = 35
    Top = 26
    Width = 65
    Height = 58
  end
  object lblUpdate: TLabel
    Left = 360
    Top = 43
    Width = 47
    Height = 15
    Caption = 'Update 2'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Pitch = fpVariable
    Font.Style = []
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object cmdOK: TButton
    Left = 432
    Top = 180
    Width = 70
    Height = 38
    Caption = 'OK'
    TabOrder = 0
    OnClick = cmdOKClick
  end
end
