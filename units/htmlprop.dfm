object frmHtml: TfrmHtml
  Left = 874
  Top = 263
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Webpage Properties'
  ClientHeight = 457
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pPage: TPanel
    Left = 293
    Top = 30
    Width = 387
    Height = 390
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object lblBookmarkHeader: TLabel
      Left = 64
      Top = 24
      Width = 260
      Height = 54
      Caption = 'My Bookmarks'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -40
      Font.Name = 'Segoe UI'
      Font.Pitch = fpVariable
      Font.Style = []
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
    end
    object lblPageCat: TLabel
      Left = 24
      Top = 104
      Width = 199
      Height = 32
      Caption = 'Category Heading'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI Semibold'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
    end
    object lblPageBookmarkDesc: TLabel
      Left = 24
      Top = 176
      Width = 349
      Height = 57
      AutoSize = False
      Caption = 
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasell' +
        'us sed interdum'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 4802889
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      WordWrap = True
    end
    object lblHyperlink: TLabel
      Left = 24
      Top = 144
      Width = 108
      Height = 15
      Cursor = crHandPoint
      Caption = 'Bookmark Hyperlink'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 16744448
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      OnMouseEnter = lblHyperlinkMouseEnter
      OnMouseLeave = lblHyperlinkMouseLeave
    end
  end
  object txtHeaderText: TLabeledEdit
    Left = 24
    Top = 51
    Width = 256
    Height = 23
    EditLabel.Width = 98
    EditLabel.Height = 15
    EditLabel.Caption = 'Page Heading Text'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    TabOrder = 1
    Text = 'My Bookmarks'
    OnChange = txtHeaderTextChange
  end
  object lblBackcolor: TStaticText
    Left = 24
    Top = 104
    Width = 95
    Height = 19
    Caption = 'Page back colour'
    TabOrder = 2
  end
  object cmdPageColor: TButtonColor
    Left = 217
    Top = 96
    Width = 57
    Height = 38
    TabOrder = 10
  end
  object lblHeadingcolor: TStaticText
    Left = 24
    Top = 152
    Width = 79
    Height = 19
    Caption = 'Heading color'
    TabOrder = 3
  end
  object cmdHeaderColor: TButtonColor
    Left = 217
    Top = 144
    Width = 57
    Height = 38
    TabOrder = 11
  end
  object lblCatColor: TStaticText
    Left = 24
    Top = 200
    Width = 100
    Height = 19
    Caption = 'Category Heading'
    TabOrder = 4
  end
  object cmdCatColor: TButtonColor
    Left = 217
    Top = 192
    Width = 57
    Height = 38
    TabOrder = 12
  end
  object lblDescriptionColor: TStaticText
    Left = 24
    Top = 352
    Width = 121
    Height = 19
    Caption = 'Bookmark Description'
    TabOrder = 5
  end
  object cmdBookmarkDescColor: TButtonColor
    Left = 217
    Top = 344
    Width = 57
    Height = 38
    TabOrder = 13
  end
  object cmdExport: TButton
    Left = 16
    Top = 400
    Width = 113
    Height = 38
    Caption = 'Export'
    TabOrder = 6
    OnClick = cmdExportClick
  end
  object cmdClose: TButton
    Left = 136
    Top = 400
    Width = 88
    Height = 38
    Caption = 'Close'
    TabOrder = 7
    OnClick = cmdCloseClick
  end
  object lblBookmarkLinkColor: TStaticText
    Left = 24
    Top = 248
    Width = 115
    Height = 19
    Caption = 'Bookmark Link Color'
    TabOrder = 8
  end
  object cmdLinkColor: TButtonColor
    Left = 217
    Top = 240
    Width = 57
    Height = 38
    TabOrder = 14
  end
  object lblBookmarkLinkColor1: TStaticText
    Left = 24
    Top = 296
    Width = 118
    Height = 19
    Caption = 'Bookmark Link Hover'
    TabOrder = 9
  end
  object cmdLinkColorHover: TButtonColor
    Left = 217
    Top = 288
    Width = 57
    Height = 38
    TabOrder = 15
  end
end
