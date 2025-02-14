unit Tools;

interface

uses
  Classes, SysUtils, ComCtrls, Graphics, listimages, Forms, ShellAPI, Winapi.Windows;

type
  TBrowserCfg = (IE, Edge, Firefox, Chrome, Opera);

function VaildFileName(S: string): boolean;
function AddCatName(TheName: string): integer;
function EditCat(OldName, NewName: string): integer;
function ColorToHtml(c: TColor): string;
procedure InitListIcons;
procedure OpenURL(const Url: String);

var
  AppPath: string;
  BasePath: string;
  SelectedCatName: string;
  LinksMoveFromCat: string;
  LinksMoveToCat: string;
  ButtonPress: integer;
  ExportTemplate: string;
  IsAdding: boolean;
  //Link vars
  LinkName: string;
  LinkUrl: string;
  LinkDesc: string;
  LinkIcon: integer;
  //Cat icons
  CatIcon: integer;
  CatName: string;
  //Linkshare
  LinkShareUrl: string;
  LinkShareSrc: string;
  //Temp form to hold image lists for icons
  frmIcons: TfrmTemp;
  //Html export page properties
  HtmlPageTitle: string;
  HtmlPageBkColor: string;
  HtmlPageHeaderColor: string;
  HtmlPageCatTextColor: string;
  HtmlPageBookmarkDescription: string;
  HtmlPageLinkColor: string;
  HtmlPageLinkHoverColor: string;

implementation

procedure OpenURL(const Url: String);
Begin
   ShellExecute(Application.Handle, Nil, PChar(Url), Nil, Nil, SW_SHOWNORMAL);
End;

procedure InitListIcons;
begin
  frmIcons := TfrmTemp.Create(nil);
end;

function ColorToHtml(c: TColor): string;
begin
//  Result := '#' + IntToHex(GetRValue(c), 2) + IntToHex(GetGValue(c), 2) +
//    IntToHex(GetBValue(c), 2);
end;

function VaildFileName(S: string): boolean;
var
  Flag: boolean;
  X: integer;
begin
  Flag := True;

  for X := 1 to Length(S) do
  begin
    if S[X] in ['<', '>', '/', '\', '?', '"', '*', ':', '|'] then
    begin
      Flag := False;
      Break;
    end;
  end;
  Result := Flag;
end;

function AddCatName(TheName: string): integer;
var
  tf: TextFile;
begin
  if not VaildFileName(TheName) then
  begin
    Result := 0;
  end
  else if FileExists(BasePath + TheName + '.cat') then
  begin
    Result := 1;
  end
  else
  begin
    AssignFile(tf, BasePath + TheName + '.cat');
    Rewrite(tf);
    CloseFile(tf);
    Result := 2;
  end;
end;

function EditCat(OldName, NewName: string): integer;
var
  tf: TextFile;
  lzOldFile, lzNewFile: string;
begin
  lzOldFile := BasePath + OldName + '.cat';
  lzNewFile := BasePath + NewName + '.cat';

  if not VaildFileName(NewName) then
  begin
    Result := 0;
  end
  else if FileExists(lzNewFile) then
  begin
    Result := 1;
  end
  else
  begin
    RenameFile(lzOldFile, lzNewFile);
    Result := 2;
  end;
end;

end.
