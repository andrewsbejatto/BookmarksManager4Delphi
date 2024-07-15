unit about;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type

  { TfrmAbout }

  TfrmAbout = class(TForm)
    cmdOK: TButton;
    imgLogo: TImage;
    lblWebsite: TLabel;
    lblInfo: TLabel;
    lblDevOp: TLabel;
    lblTitle: TLabel;
    procedure cmdOKClick(Sender: TObject);
    procedure lblWebsiteClick(Sender: TObject);
    procedure lblWebsiteMouseEnter(Sender: TObject);
    procedure lblWebsiteMouseLeave(Sender: TObject);
  private

  public

  end;

var
  frmAbout: TfrmAbout;

implementation

{$R *.dfm}

uses
  Tools;

{ TfrmAbout }

procedure TfrmAbout.cmdOKClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmAbout.lblWebsiteClick(Sender: TObject);
begin
  OpenURL('https://github.com/andrewsbejatto/BookmarksManager4Delphi');
end;

procedure TfrmAbout.lblWebsiteMouseEnter(Sender: TObject);
begin
  lblWebsite.Font.Color := clRed;
end;

procedure TfrmAbout.lblWebsiteMouseLeave(Sender: TObject);
begin
  lblWebsite.Font.Color := clBlue;
end;

end.
