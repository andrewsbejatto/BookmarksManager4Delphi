unit linkshare;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Tools;

type

  { TfrmShareLink }

  TfrmShareLink = class(TForm)
    cmdOK: TButton;
    cmdClose: TButton;
    ImgShare: TImage;
    lblServiceTitle: TLabel;
    R1: TRadioButton;
    R2: TRadioButton;
    R3: TRadioButton;
    R4: TRadioButton;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

  end;

var
  frmShareLink: TfrmShareLink;
  ShareID: integer;

implementation

{$R *.dfm}

{ TfrmShareLink }

procedure TfrmShareLink.cmdOKClick(Sender: TObject);
begin

  case ShareID of
    0:
    begin
      Tools.LinkShareSrc :=
        'https://www.facebook.com/sharer/sharer.php?u=' + LinkShareUrl;
    end;
    1:
    begin
      Tools.LinkShareSrc := 'https://twitter.com/intent/tweet?text=' + LinkShareUrl;
    end;
    2:
    begin
      Tools.LinkShareSrc :=
        'https://www.linkedin.com/shareArticle?mini=true&url=' + LinkShareUrl;
    end;
    3:
    begin
      Tools.LinkShareSrc := 'mailto:?subject=Website Link&body=' +
        'Here is a link I like to share with you: ' + ' ' + LinkShareUrl;
    end;
    else
    begin
      Tools.LinkShareSrc := '';
    end;
  end;

  Tools.ButtonPress := 1;
  Close;
end;

procedure TfrmShareLink.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmShareLink := nil;
  Action := TCloseAction.caFree;
end;

procedure TfrmShareLink.FormCreate(Sender: TObject);
begin
  ShareID := 0;
end;

procedure TfrmShareLink.R1Click(Sender: TObject);
begin
  ShareID := 0;
end;

procedure TfrmShareLink.R2Click(Sender: TObject);
begin
  ShareID := 1;
end;

procedure TfrmShareLink.R3Click(Sender: TObject);
begin
  ShareID := 2;
end;

procedure TfrmShareLink.R4Click(Sender: TObject);
begin
  ShareID := 3;
end;

procedure TfrmShareLink.cmdCloseClick(Sender: TObject);
begin
  Tools.ButtonPress := 0;
  Close;
end;

end.
