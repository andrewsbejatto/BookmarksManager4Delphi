unit browsercfg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  IniFiles, Tools, Vcl.WinXCtrls;

type

  { TfrmBrowsers }

  TfrmBrowsers = class(TForm)
    cmdOK: TButton;
    cmdClose: TButton;
    cboDefault: TComboBox;
    Label1: TLabel;
    lblTitle1: TLabel;
    lblTitle2: TLabel;
    lblTitle3: TLabel;
    lblTitle4: TLabel;
    txtFileEd1: TSearchBox;
    lblTitle: TLabel;
    txtFileEd2: TSearchBox;
    txtFileEd3: TSearchBox;
    txtFileEd4: TSearchBox;
    txtFileEd5: TSearchBox;
    OpenDialog1: TOpenDialog;
    procedure cmdCloseClick(Sender: TObject);
    procedure cmdOKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BrowsersInfo;
    procedure SaveBrowserInfo;
    procedure txtFileEd1InvokeSearch(Sender: TObject);
    procedure txtFileEd2InvokeSearch(Sender: TObject);
    procedure txtFileEd3InvokeSearch(Sender: TObject);
    procedure txtFileEd4InvokeSearch(Sender: TObject);
    procedure txtFileEd5InvokeSearch(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private

  public

  end;

var
  frmBrowsers: TfrmBrowsers;

implementation

{$R *.dfm}

{ TfrmBrowsers }

procedure TfrmBrowsers.BrowsersInfo;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(AppPath + 'browsers.ini');

  txtFileEd1.Text := ini.ReadString('browser1', 'Path', '');
  txtFileEd2.Text := ini.ReadString('browser2', 'Path', '');
  txtFileEd3.Text := ini.ReadString('browser3', 'Path', '');
  txtFileEd4.Text := ini.ReadString('browser4', 'Path', '');
  txtFileEd5.Text := ini.ReadString('browser5', 'Path', '');

  txtFileEd1.Text := txtFileEd1.Text;
  txtFileEd2.Text := txtFileEd2.Text;
  txtFileEd3.Text := txtFileEd3.Text;
  txtFileEd4.Text := txtFileEd4.Text;
  txtFileEd5.Text := txtFileEd5.Text;
  cboDefault.ItemIndex := ini.ReadInteger('Browsers', 'default', 0);

  FreeAndNil(ini);
end;

procedure TfrmBrowsers.SaveBrowserInfo;
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(AppPath + 'browsers.ini');

  ini.WriteString('browser1', 'Path', txtFileEd1.Text);
  ini.WriteString('browser2', 'Path', txtFileEd2.Text);
  ini.WriteString('browser3', 'Path', txtFileEd3.Text);
  ini.WriteString('browser4', 'Path', txtFileEd4.Text);
  ini.WriteString('browser5', 'Path', txtFileEd5.Text);
  ini.WriteInteger('Browsers', 'default', cboDefault.ItemIndex);
  FreeAndNil(ini);

end;

procedure TfrmBrowsers.txtFileEd1InvokeSearch(Sender: TObject);
begin
  if OpenDialog1.Execute then
    txtFileEd1.Text := OpenDialog1.FileName;
end;

procedure TfrmBrowsers.txtFileEd2InvokeSearch(Sender: TObject);
begin
  if OpenDialog1.Execute then
    txtFileEd2.Text := OpenDialog1.FileName;
end;

procedure TfrmBrowsers.txtFileEd3InvokeSearch(Sender: TObject);
begin
  if OpenDialog1.Execute then
    txtFileEd3.Text := OpenDialog1.FileName;
end;

procedure TfrmBrowsers.txtFileEd4InvokeSearch(Sender: TObject);
begin
  if OpenDialog1.Execute then
    txtFileEd4.Text := OpenDialog1.FileName;
end;

procedure TfrmBrowsers.txtFileEd5InvokeSearch(Sender: TObject);
begin
  if OpenDialog1.Execute then
    txtFileEd5.Text := OpenDialog1.FileName;
end;

procedure TfrmBrowsers.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmBrowsers := nil;
  Action := TCloseAction.caFree;
end;

procedure TfrmBrowsers.FormCreate(Sender: TObject);
begin
  BrowsersInfo;
end;

procedure TfrmBrowsers.cmdOKClick(Sender: TObject);
begin
  SaveBrowserInfo;
  tools.ButtonPress := 1;
  Close;
end;

procedure TfrmBrowsers.cmdCloseClick(Sender: TObject);
begin
  tools.ButtonPress := 0;
  Close;
end;

end.
