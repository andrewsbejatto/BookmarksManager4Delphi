program Bookmarks4Delphi;

uses
  Vcl.Forms,
  about in 'units\about.pas' {frmAbout},
  addcat in 'units\addcat.pas' {frmCatAdd},
  addlink in 'units\addlink.pas' {frmAddLink},
  browsercfg in 'units\browsercfg.pas' {frmBrowsers},
  filebag in 'units\filebag.pas',
  htmlprop in 'units\htmlprop.pas' {frmHtml},
  linkmove in 'units\linkmove.pas' {frmMoveLink},
  listimages in 'units\listimages.pas' {frmTemp},
  main in 'units\main.pas' {frmLinks},
  tools in 'units\tools.pas',
  linkshare in 'units\linkshare.pas' {frmShareLink};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLinks, frmLinks);
  Application.Run;
end.
