object frmMoveLink: TfrmMoveLink
  Left = 721
  Top = 250
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Move Bookmark'
  ClientHeight = 153
  ClientWidth = 420
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lblMoveTo: TLabel
    Left = 32
    Top = 16
    Width = 96
    Height = 15
    Caption = 'Move to category.'
    Color = clBtnFace
    ParentColor = False
  end
  object cboMoveTo: TComboBox
    Left = 32
    Top = 48
    Width = 342
    Height = 31
    Style = csOwnerDrawVariable
    ItemHeight = 25
    TabOrder = 0
    OnDrawItem = cboMoveToDrawItem
    OnMeasureItem = cboMoveToMeasureItem
  end
  object cmdOK: TButton
    Left = 32
    Top = 96
    Width = 113
    Height = 38
    Caption = 'Move'
    TabOrder = 1
    OnClick = cmdOKClick
  end
  object cmdClose: TButton
    Left = 152
    Top = 96
    Width = 88
    Height = 38
    Caption = 'Close'
    TabOrder = 2
    OnClick = cmdCloseClick
  end
end
