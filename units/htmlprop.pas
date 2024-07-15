unit htmlprop;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  VCLTee.TeCanvas, Tools, Vcl.Mask;

type

  { TfrmHtml }

  TfrmHtml = class(TForm)
    cmdLinkColor: TButtonColor;
    cmdExport: TButton;
    cmdClose: TButton;
    cmdLinkColorHover: TButtonColor;
    cmdPageColor: TButtonColor;
    cmdHeaderColor: TButtonColor;
    cmdCatColor: TButtonColor;
    cmdBookmarkDescColor: TButtonColor;
    lblHyperlink: TLabel;
    lblBookmarkHeader: TLabel;
    lblBookmarkLinkColor: TStaticText;
    lblBookmarkLinkColor1: TStaticText;
    lblPageCat: TLabel;
    lblPageBookmarkDesc: TLabel;
    txtHeaderText: TLabeledEdit;
    pPage: TPanel;
    lblBackcolor: TStaticText;
    lblHeadingcolor: TStaticText;
    lblCatColor: TStaticText;
    lblDescriptionColor: TStaticText;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdExportClick(Sender: TObject);
    procedure cmdLinkColorColorChanged(Sender: TObject);
    procedure cmdPageColorColorChanged(Sender: TObject);
    procedure cmdHeaderColorColorChanged(Sender: TObject);
    procedure cmdCatColorColorChanged(Sender: TObject);
    procedure cmdBookmarkDescColorColorChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lblHyperlinkMouseEnter(Sender: TObject);
    procedure lblHyperlinkMouseLeave(Sender: TObject);
    procedure txtHeaderTextChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure CenterHeader;
  public

  end;

var
  frmHtml: TfrmHtml;

implementation

{$R *.dfm}

{ TfrmHtml }

procedure TfrmHtml.CenterHeader;
begin
  lblBookmarkHeader.Left := (pPage.Width - lblBookmarkHeader.Width) div 2;
end;

procedure TfrmHtml.cmdExportClick(Sender: TObject);
begin
  Tools.ButtonPress := 1;
  Tools.HtmlPageTitle := txtHeaderText.Text;
  Tools.HtmlPageBkColor := ColorToHtml(cmdPageColor.SymbolColor);
  Tools.HtmlPageHeaderColor := ColorToHtml(cmdHeaderColor.SymbolColor);
  Tools.HtmlPageCatTextColor := ColorToHtml(cmdCatColor.SymbolColor);
  Tools.HtmlPageBookmarkDescription := ColorToHtml(cmdBookmarkDescColor.SymbolColor);
  Tools.HtmlPageLinkColor := ColorToHtml(cmdLinkColor.SymbolColor);
  Tools.HtmlPageLinkHoverColor := ColorToHtml(cmdLinkColorHover.SymbolColor);
  Close;
end;

procedure TfrmHtml.cmdLinkColorColorChanged(Sender: TObject);
begin
  lblHyperlink.Font.Color := cmdLinkColor.SymbolColor;
end;

procedure TfrmHtml.cmdPageColorColorChanged(Sender: TObject);
begin
  pPage.Color := cmdPageColor.SymbolColor;
end;

procedure TfrmHtml.cmdHeaderColorColorChanged(Sender: TObject);
begin
  lblBookmarkHeader.Font.Color := cmdHeaderColor.SymbolColor;
end;

procedure TfrmHtml.cmdCatColorColorChanged(Sender: TObject);
begin
  lblPageCat.Font.Color := cmdCatColor.SymbolColor;
end;

procedure TfrmHtml.cmdBookmarkDescColorColorChanged(Sender: TObject);
begin
  lblPageBookmarkDesc.Font.Color := cmdBookmarkDescColor.SymbolColor;
end;

procedure TfrmHtml.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmHtml := nil;
  Action := TCloseAction.caFree;
end;

procedure TfrmHtml.FormCreate(Sender: TObject);
begin
  CenterHeader;
end;

procedure TfrmHtml.lblHyperlinkMouseEnter(Sender: TObject);
begin
  lblHyperlink.Font.Color := cmdLinkColorHover.SymbolColor;
end;

procedure TfrmHtml.lblHyperlinkMouseLeave(Sender: TObject);
begin
  lblHyperlink.Font.Color := cmdLinkColor.SymbolColor;
end;

procedure TfrmHtml.txtHeaderTextChange(Sender: TObject);
begin
  lblBookmarkHeader.Caption := txtHeaderText.Text;
  CenterHeader;
end;

procedure TfrmHtml.cmdCloseClick(Sender: TObject);
begin
  Tools.ButtonPress := 0;
  Close;
end;

end.
