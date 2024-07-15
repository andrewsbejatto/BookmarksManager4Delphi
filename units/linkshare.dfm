object frmShareLink: TfrmShareLink
  Left = 649
  Top = 290
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Share Bookmark'
  ClientHeight = 291
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblServiceTitle: TLabel
    Left = 72
    Top = 24
    Width = 252
    Height = 15
    Caption = 'Select the service to share your bookmark with:'
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI Semibold'
    Font.Pitch = fpVariable
    Font.Style = [fsBold, fsItalic]
    Font.Quality = fqDraft
    ParentColor = False
    ParentFont = False
  end
  object ImgShare: TImage
    Left = 24
    Top = 19
    Width = 32
    Height = 32
    AutoSize = True
  end
  object R1: TRadioButton
    Left = 72
    Top = 64
    Width = 107
    Height = 29
    Caption = 'Facebook'
    Checked = True
    TabOrder = 0
    TabStop = True
  end
  object R2: TRadioButton
    Left = 72
    Top = 104
    Width = 83
    Height = 29
    Caption = 'Twitter'
    TabOrder = 1
  end
  object R3: TRadioButton
    Left = 72
    Top = 144
    Width = 96
    Height = 29
    Caption = 'LinkedIn'
    TabOrder = 2
  end
  object cmdOK: TButton
    Left = 72
    Top = 232
    Width = 113
    Height = 38
    Caption = 'OK'
    TabOrder = 4
    OnClick = cmdOKClick
  end
  object cmdClose: TButton
    Left = 192
    Top = 232
    Width = 80
    Height = 38
    Caption = 'Close'
    TabOrder = 5
    OnClick = cmdCloseClick
  end
  object R4: TRadioButton
    Left = 72
    Top = 184
    Width = 72
    Height = 29
    Caption = 'Email'
    TabOrder = 3
  end
end
