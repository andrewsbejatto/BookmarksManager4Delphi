unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Buttons, Vcl.Menus, FileBag, linkshare, Vcl.Clipbrd, IniFiles, System.Types,
  about, browsercfg, addcat, htmlprop, Tools, addlink, linkmove;

type

  { TfrmLinks }
  TfrmLinks = class(TForm)
    cmdCatDup: TSpeedButton;
    cmdClearBookmarks: TSpeedButton;
    lblCat: TLabel;
    lblBookmarks: TLabel;
    lblBookmarkInfo: TLabel;
    mnuMakeCopy: TMenuItem;
    mnuClearBookmarks: TMenuItem;
    mnuTrayExit: TMenuItem;
    mnuTrayAbout: TMenuItem;
    cmdExit: TSpeedButton;
    cmdBackup: TSpeedButton;
    cmdUrlCpy: TSpeedButton;
    cmdAbout: TSpeedButton;
    cmdShareTwitter: TSpeedButton;
    cmdRestore: TSpeedButton;
    cmdCatEdit: TSpeedButton;
    cmdCatDelete: TSpeedButton;
    cmdExportLinks: TSpeedButton;
    cmdOpenLink: TSpeedButton;
    cmdMoveLink: TSpeedButton;
    cmdShortcut: TSpeedButton;
    lblUrlTitle: TLabel;
    lblUrl: TLabel;
    pBookmarkInfoCanvas: TPanel;
    mnuTray: TPopupMenu;
    Tray1: TTrayIcon;
    txtDesc: TMemo;
    mnuShortcut: TMenuItem;
    mnuShareBookmark: TMenuItem;
    Panel4: TPanel;
    Separator2: TMenuItem;
    Separator3: TMenuItem;
    mnuExportHtml: TMenuItem;
    mnuExportFav: TMenuItem;
    mnuCopyUrl: TMenuItem;
    mnuExport: TPopupMenu;
    txtSearchCats: TEdit;
    txtSearchLinks: TEdit;
    lblSearchCats: TLabel;
    lblSearchLinks: TLabel;
    LstLinks: TListBox;
    lstCats: TListBox;
    mnuCatInportLinks: TMenuItem;
    mnuCatExport: TMenuItem;
    mnuCatDelete: TMenuItem;
    mnuCatEdit: TMenuItem;
    mnuNewCat: TMenuItem;
    mnuLinkNew: TMenuItem;
    mnuLinkMove: TMenuItem;
    mnuLinkEdit: TMenuItem;
    mnuLinkDelete: TMenuItem;
    mnuCats: TPopupMenu;
    Separator1: TMenuItem;
    mnuOpenLink: TMenuItem;
    Panel1: TPanel;
    pCarCanvas: TPanel;
    pBookmarksCanvas: TPanel;
    pBase: TPanel;
    cmdCatAdd: TSpeedButton;
    cmdLinkAdd: TSpeedButton;
    cmdLinkEdit: TSpeedButton;
    cmdLinksDelete: TSpeedButton;
    mnuLinks: TPopupMenu;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    imgBar: TImage;
    Image1: TImage;
    Image2: TImage;
    procedure cmdAboutClick(Sender: TObject);
    procedure cmdBackupClick(Sender: TObject);
    procedure cmdCatAddClick(Sender: TObject);
    procedure cmdCatDeleteClick(Sender: TObject);
    procedure cmdCatDupClick(Sender: TObject);
    procedure cmdCatEditClick(Sender: TObject);
    procedure cmdClearBookmarksClick(Sender: TObject);
    procedure cmdExportLinksClick(Sender: TObject);
    procedure cmdLinkAddClick(Sender: TObject);
    procedure cmdLinkEditClick(Sender: TObject);
    procedure cmdLinksDeleteClick(Sender: TObject);
    procedure cmdMoveLinkClick(Sender: TObject);
    procedure cmdOpenLinkClick(Sender: TObject);
    procedure cmdRestoreClick(Sender: TObject);
    procedure cmdShareTwitterClick(Sender: TObject);
    procedure cmdShortcutClick(Sender: TObject);
    procedure cmdUrlCpyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormWindowStateChange(Sender: TObject);
    procedure lblUrlClick(Sender: TObject);
    procedure lblUrlMouseEnter(Sender: TObject);
    procedure lblUrlMouseLeave(Sender: TObject);
    procedure lstCatsClick(Sender: TObject);
    procedure lstCatsDblClick(Sender: TObject);
    procedure lstCatsDrawItem(Control: TWinControl; Index: integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure lstCatsKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure lstCatsMeasureItem(Control: TWinControl; Index: integer;
      var AHeight: integer);
    procedure LstLinksClick(Sender: TObject);
    procedure LstLinksDblClick(Sender: TObject);
    procedure LstLinksDrawItem(Control: TWinControl; Index: integer;
      ARect: TRect; State: TOwnerDrawState);
    procedure LstLinksKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
    procedure LstLinksMeasureItem(Control: TWinControl; Index: integer;
      var AHeight: integer);
    procedure mnuCatDeleteClick(Sender: TObject);
    procedure mnuCatEditClick(Sender: TObject);
    procedure mnuCatExportClick(Sender: TObject);
    procedure mnuCatInportLinksClick(Sender: TObject);
    procedure mnuClearBookmarksClick(Sender: TObject);
    procedure mnuCopyUrlClick(Sender: TObject);
    procedure cmdExitClick(Sender: TObject);
    procedure mnuExportFavClick(Sender: TObject);
    procedure mnuExportHtmlClick(Sender: TObject);
    procedure mnuLinkDeleteClick(Sender: TObject);
    procedure mnuLinkEditClick(Sender: TObject);
    procedure mnuLinkMoveClick(Sender: TObject);
    procedure mnuLinkNewClick(Sender: TObject);
    procedure mnuMakeCopyClick(Sender: TObject);
    procedure mnuNewCatClick(Sender: TObject);
    procedure mnuShareBookmarkClick(Sender: TObject);
    procedure mnuShortcutClick(Sender: TObject);
    procedure mnuTrayAboutClick(Sender: TObject);
    procedure mnuTrayExitClick(Sender: TObject);
    procedure Tray1Click(Sender: TObject);
    procedure txtSearchCatsChange(Sender: TObject);
    procedure txtSearchLinksChange(Sender: TObject);
  private
    procedure LoadCats;
    procedure AddCatIcon(cName: string; nIcon: integer);
    procedure EditCatName(cOldName, cNewName: string; nIcon: integer);
    procedure DeleteCatIcon(cName: string);
    function GetCatIcon(cName: string): integer;
    procedure ErrorMsgCat(S: string);
    procedure AddLinkInfo(lName, lAddress, lDesc: string; nIcon: integer);
    procedure LoadLinks;
    procedure EditCatLink(oldName, NewName, lAddress, lDesc: string;
      nViews, nVotes, nIcon: integer);
    procedure DupCatLink(NewName, lAddress, lDesc: string;
      nViews, nVotes, nIcon: integer);
    procedure DeleteLink(sName: string);
    function GetLinkName(Index: integer): string;
    function GetLinkUrl(Index: integer): string;
    function GetLinkDescription(Index: integer): string;
    function GetLinkViews(Index: integer): integer;
    function GetLinkVotes(Index: integer): integer;
    function GetLinkIcon(Index: integer): integer;
    procedure MoveLinkToCat(MoveFromCat, MoveToCat: string;
      sName, lDesc: string; nViews, nVotes, nIcon: integer);
    procedure BackupLinks;
    procedure RestoreLinks;
    function GetDlgSaveName(Title, dFilter, Filename, defExt: string): string;
    function GetDlgOpenName(Title, dFilter: string): string;
    procedure MoveToListIndex(sItem: string; lBox: TListBox);
    procedure SearchListBox(sFind: string; lBox: TListBox);
    procedure LoadBrowsers;
    procedure BrowserConfig_Click(Sender: TObject);
    procedure Browser_Click(Sender: TObject);
    procedure OpenInBrowser(Index: integer);
    procedure ExportToHtml;
    procedure ExportToIEFav;
    procedure CountCatsAndBookmarks;
    procedure ClearBookmarInfo;
  public

  end;

var
  frmLinks: TfrmLinks;
  Browsers: TStringList;
  KeyPressCancel: boolean;

const
  BadCatName = 'The category name contains illegal characters.' +
    sLineBreak + sLineBreak +
    'The category name cannot contain any of the following characters:' +
    sLineBreak + '      \ / : * ? " < > |';

const
  BackupFaild = 'The backup process has failed.';

const
  ErrorOpeningUrl = 'There was an error while opening the bookmark.';

const
  BookmarkExsists = 'The bookmark already exists.';

implementation

{$R *.dfm}

uses
  System.IOUtils,
  ShellAPI;

{ TfrmLinks }

procedure TfrmLinks.ClearBookmarInfo;
begin
  lblurl.Caption := '';
  txtDesc.Clear;
end;

procedure TfrmLinks.CountCatsAndBookmarks;
var
  sr: TSearchRec;
  lzCatFile: string;
  CatCount: integer;
  BookmarkCount: integer;
  sBookmarks: TStringList;
  ini: TIniFile;
begin
  BookmarkCount := 0;
  CatCount := 0;
  sBookmarks := TStringList.Create;
  //Display the count of the Categories and bookmarks
  if FindFirst(BasePath + '*.cat', faAnyFile, sr) = 0 then
  begin
    repeat
      Inc(CatCount);
      //Cat file
      lzCatFile := BasePath + sr.Name;
      ini := TIniFile.Create(lzCatFile);
      ini.ReadSections(sBookmarks);
      BookmarkCount := (BookmarkCount + sBookmarks.Count);
    until FindNext(sr) <> 0;
  end;

  FreeAndNil(sBookmarks);

  StatusBar1.SimpleText := '  ' + IntToStr(CatCount) + ' Categories ' +
    IntToStr(BookmarkCount) + ' Bookmarks';
end;

procedure TfrmLinks.ExportToIEFav;
var
  sr: TSearchRec;
  bf: TOpenDialog;
  sBookmarks: TStringList;
  I: integer;
  tf: TextFile;
  RootDir: string;
  ini: TIniFile;
  CatPath, FavDir, cName, cLink: string;
begin

  if lstCats.Count <> 0 then
  begin

    bf := TOpenDialog.Create(self);
    bf.Title := 'Select Folder:';

    if bf.Execute then
    begin
      RootDir := bf.FileName;
    end;

    //Clear up obj
    FreeAndNil(bf);

    if (RootDir <> '') and (DirectoryExists(RootDir)) then
    begin
      sBookmarks := TStringList.Create;

      if FindFirst(BasePath + '*.cat', faAnyFile, sr) = 0 then
      begin
        repeat
          CatPath := BasePath + sr.Name;
          //Get cat name
          FavDir := RootDir + ExtractFileName(CatPath) + PathDelim;
          //Create the cat folders
          if ForceDirectories(FavDir) then
          begin
            ini := TIniFile.Create(CatPath);
            //Load the bookmarks and create the .URL files
            ini.ReadSections(sBookmarks);

            if sBookmarks.Count > 0 then
            begin
              //Loop tho the bookmarks
              for I := 0 to sBookmarks.Count - 1 do
              begin
                //Get bookmark name
                cName := sBookmarks[I];
                //Get bookmark name and hyperlink
                cLink := ini.ReadString(cName, 'URL', '');
                //Write internet shortcut
                AssignFile(tf, FavDir + cName + '.url');
                Rewrite(tf);
                Writeln(tf, '[InternetShortcut]');
                Writeln(tf, 'URL=' + cLink);
                CloseFile(tf);
              end;
            end;
          end;
        until FindNext(sr) <> 0;
      end;
      FreeAndNil(ini);
      FreeAndNil(sBookmarks);
    end;
  end;
end;

procedure TfrmLinks.ExportToHtml;
var
  sr: TSearchRec;
  iData: TStringList;
  HtmlData: TStringList;
  sBookMarks: TStringList;
  frm: TfrmHtml;
  I: integer;
  tf: TextFile;
  ini: TIniFile;
  lzFile, CatPath, sData, cLink, cName, cDesc: string;
begin

  if lstCats.Count <> 0 then
  begin
    Tools.ButtonPress := 0;
    frm := TfrmHtml.Create(self);
    frm.ShowModal;
    if Tools.ButtonPress = 1 then
    begin
      cName := lstCats.Items[lstCats.ItemIndex];
      //Load template
      iData := TStringList.Create;

      HtmlData := TStringList.Create;
      sBookMarks := TStringList.Create;
      iData.LoadFromFile(ExportTemplate);

      if FindFirst(BasePath + '*.cat', faAnyFile, sr) = 0 then
      begin
        repeat
          CatPath := BasePath + sr.Name;
          //Get cat name
          cName := ExtractFileName(CatPath);
          //Load the bookmarks and generate the webpage
          ini := TIniFile.Create(CatPath);
          //Load selections
          ini.ReadSections(sBookMarks);
          //Add the bookmarks header
          HtmlData.Add('<h2 class="cat-header">' + cName + '</h2>');

          if sBookMarks.Count > 0 then
          begin
            //Loop tho the bookmarks
            for I := 0 to sBookMarks.Count - 1 do
            begin
              cName := sBookMarks[I];
              cLink := ini.ReadString(cName, 'URL', '');
              cDesc := ini.ReadString(cName, 'INFO', '');
              //Add hyperlink
              HtmlData.Add('<a href="' + cLink + '" target="_blank">' + cName + '</a>');
              HtmlData.Add('<span class="info">' + cDesc + '</span>');
            end;
          end;
          HtmlData.Add('<hr>');
        until FindNext(sr) <> 0;
      end;

      sData := Trim(iData.Text);

      sData := StringReplace(sData, '%header-title%', tools.HtmlPageTitle,
        [rfIgnoreCase, rfReplaceAll]);
      sData := StringReplace(sData, '%page-color%', tools.HtmlPageBkColor,
        [rfIgnoreCase, rfReplaceAll]);
      sData := StringReplace(sData, '%header-color%', tools.HtmlPageHeaderColor,
        [rfIgnoreCase, rfReplaceAll]);
      sData := StringReplace(sData, '%cat-color%', tools.HtmlPageCatTextColor,
        [rfIgnoreCase, rfReplaceAll]);
      sData := StringReplace(sData, '%info-color%', tools.HtmlPageBookmarkDescription,
        [rfIgnoreCase, rfReplaceAll]);
      sData := StringReplace(sData, '%link-color%', tools.HtmlPageLinkColor,
        [rfIgnoreCase, rfReplaceAll]);
      sData := StringReplace(sData, '%link-hover%', tools.HtmlPageLinkHoverColor,
        [rfIgnoreCase, rfReplaceAll]);

      sData := StringReplace(sData, '%BOOKMARK_DATA%', HtmlData.Text,
        [rfIgnoreCase, rfReplaceAll]);

      //Save the data
      lzFile := GetDlgSaveName('Export', 'Html Files(*.html)|*.html|All Files(*.*)|*.*',
        'bookmarks', 'html');
      if lzFile <> '' then
      begin
        //Write page title
        sData := StringReplace(sData, '%title%', TPath.GetFileNameWithoutExtension(ExtractFileName(lzFile)),
          [rfIgnoreCase, rfReplaceAll]);
        //Write to file
        AssignFile(tf, lzFile);
        ReWrite(tf);
        Write(tf, sData);
        CloseFile(tf);
      end;

      sData := '';
      FreeAndNil(iData);
      FreeAndNil(HtmlData);
      FreeAndNil(sBookMarks);
      FreeAndNil(frm);
    end;
  end;
end;

procedure TfrmLinks.BrowserConfig_Click(Sender: TObject);
var
  frm: TfrmBrowsers;
begin
  frm := TfrmBrowsers.Create(self);
  frm.ShowModal;
  //Cear up
  FreeAndNil(frm);
end;

procedure TfrmLinks.LoadBrowsers;
var
  mi: TMenuItem;
  sSelection: string;
  ini: TIniFile;
  X, bCount: integer;
begin

  mnuOpenLink.Clear;

  mi := TMenuItem.Create(mnuOpenLink);
  mi.Caption := 'Config';
  mi.OnClick := BrowserConfig_Click;
  mnuOpenLink.Add(mi);
  mi := TMenuItem.Create(mnuOpenLink);
  mi.Caption := '-';
  mnuOpenLink.Add(mi);

  ini := TIniFile.Create(AppPath + 'browsers.ini');
  bCount := ini.ReadInteger('browsers', 'count', 0);

  for X := 1 to bCount do
  begin
    sSelection := 'Browser' + IntToStr(X);
    mi := TMenuItem.Create(mnuOpenLink);
    mi.Caption := ini.ReadString(sSelection, 'Name', 'Untitled');
    mi.Tag := X;
    mi.OnClick := Browser_Click;
    mnuOpenLink.Add(mi);
  end;

  FreeAndNil(ini);
end;

procedure TfrmLinks.Browser_Click(Sender: TObject);
var
  mi: TMenuItem;
begin
  mi := TMenuItem(Sender);
  OpenInBrowser(mi.Tag);
end;

procedure TfrmLinks.OpenInBrowser(Index: integer);
var
  exec, sSelection: string;
  ini: TIniFile;
  id: integer;
begin
  //Get ini selection
  sSelection := 'Browser' + IntToStr(Index);

  ini := TIniFile.Create(AppPath + 'browsers.ini');
  //Get broswer execute filename
  exec := ini.ReadString(sSelection, 'Path', '');

  if not FileExists(exec) then
  begin
    MessageDlg('Can Not Find Filename:' + sLineBreak + sLineBreak + exec,
      mtWarning, [mbOK], 0);
    Exit;
  end;
  Id := LstLinks.ItemIndex;
  var LParam: String;
  case (Index+1) of
    Integer(TBrowserCfg.IE): LParam := '';
    Integer(TBrowserCfg.Edge): LParam := '';
    Integer(TBrowserCfg.Firefox): LParam := '';
    Integer(TBrowserCfg.Chrome): LParam := '--new-window ';
    Integer(TBrowserCfg.Opera): LParam := '--ran-launcher --remote ';
  end;

  if (lstCats.ItemIndex <> -1) and (Id <> -1) then
    ShellExecute(Application.Handle, 'Open', PChar(exec), PChar(LParam + GetLinkUrl(ID)), Nil, SW_SHOWNORMAL);
end;

procedure TfrmLinks.SearchListBox(sFind: string; lBox: TListBox);
var
  X: integer;
  sLeft: string;
begin
  sLeft := '';
  //Reset index
  lBox.ItemIndex := -1;

  for X := 0 to lBox.Count - 1 do
  begin
    //Get the left side of the item in the listbox the size of sFind
    sLeft := lBox.Items[X].Substring(0, length(sFind)).ToLower;
    //Check if we have a match
    if lowercase(sFind) = sLeft then
    begin
      lBox.ItemIndex := X;
    end;
  end;
end;

procedure TfrmLinks.MoveToListIndex(sItem: string; lBox: TListBox);
var
  X: integer;
begin

  if sItem <> '' then
  begin
    for X := 0 to lBox.Count - 1 do
    begin
      if lowercase(lBox.Items[X]) = lowercase(sItem) then
      begin
        //Select the link name
        lBox.ItemIndex := X;
        Break;
      end;
    end;
  end;
end;

function TfrmLinks.GetDlgOpenName(Title, dFilter: string): string;
var
  lzFile: string;
  od: TOpenDialog;
begin
  od := TOpenDialog.Create(self);
  od.Title := Title;
  od.Filter := dFilter;
  if od.Execute then
  begin
    lzFile := od.FileName;
  end;
  FreeAndNil(od);
  Result := lzFile;
end;

function TfrmLinks.GetDlgSaveName(Title, dFilter, Filename, defExt: string): string;
var
  sd: TSaveDialog;
  lzFile: string;
begin
  sd := TSaveDialog.Create(self);
  sd.Title := Title;
  sd.FileName := Filename;
  sd.Filter := dFilter;
  sd.DefaultExt := defExt;

  if sd.Execute then
  begin
    lzFile := sd.FileName;
  end;

  if FileExists(lzFile) then
  begin
    if MessageDlg('The filename ' + sd.FileName + ' already exsits.' +
      sLineBreak + sLineBreak + 'Do you want to replace the filename.',
      mtInformation, [mbYes, mbNo], 0) <> mrYes then
    begin
      lzFile := '';
    end;
  end;

  FreeAndNil(sd);
  Result := lzFile;

end;

procedure TfrmLinks.RestoreLinks;
var
  lzFile: string;
  pak: TBagFile;
begin
  //Get open filename
  lzFile := GetDlgOpenName('Restore Backup', 'Bag Files(*.bag)|*.bag');

  if lzFile <> '' then
  begin
    pak := TBagFile.Create;
    if pak.UnPak(lzFile, BasePath) then
    begin
      MessageDlg('The restore process was complete.', mtInformation, [mbOK], 0);
      LoadCats;

      if lstCats.Count > 0 then
      begin
        lstCats.ItemIndex := 0;
        LoadLinks;
      end;

    end
    else
    begin
      ErrorMsgCat('The restore process has failed.');
    end;
  end;
end;

procedure TfrmLinks.BackupLinks;
var
  pak: TBagFile;
  fExt: string;
  sr: TSearchRec;
  SrcFile, lzFile, sBackupName: string;
begin
  pak := TBagFile.Create;

  //Create backup name
  sBackupName := FormatDateTime('DDMMYYMMHHMMSS', Now);

  if FindFirst(BasePath + '*.*', faAnyFile, sr) = 0 then
  begin
    repeat
      fExt := LowerCase(ExtractFileExt(sr.Name));

      if (fExt = '.cat') or (fExt = '.ini') then
      begin
        SrcFile := BasePath + sr.Name;
        pak.AddFile(SrcFile);
      end;

    until FindNext(sr) <> 0;
  end;

  //Get filename from save dialog.
  lzFile := GetDlgSaveName('Backup', 'Bag Files(*.bag)|*.bag', sBackupName, 'bag');

  if lzFile <> '' then
  begin
    if pak.Pak(lzFile) then
    begin
      MessageDlg('The backup process was complete.', mtInformation, [mbOK], 0);
    end
    else
    begin
      ErrorMsgCat(BackupFaild);
    end;
  end;

  FreeAndNil(pak);
end;

function TfrmLinks.GetLinkName(Index: integer): string;
var
  ini: TIniFile;
  sBookMarks: TStringList;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    sBookMarks := TStringList.Create;
    ini.ReadSections(sBookMarks);
    Result := sBookMarks[Index];
  end;

  FreeAndNil(ini);
  FreeAndNil(sBookMarks);
end;

function TfrmLinks.GetLinkUrl(Index: integer): string;
var
  ini: TIniFile;
  sBookMarks: TStringList;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    sBookMarks := TStringList.Create;
    ini.ReadSections(sBookMarks);
    Result := ini.ReadString(sBookMarks[Index], 'URL', '');
  end;

  FreeAndNil(ini);
  FreeAndNil(sBookMarks);
end;

function TfrmLinks.GetLinkDescription(Index: integer): string;
var
  ini: TIniFile;
  sBookMarks: TStringList;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    sBookMarks := TStringList.Create;
    ini.ReadSections(sBookMarks);
    Result := ini.ReadString(sBookMarks[Index], 'INFO', '');
  end;

  FreeAndNil(ini);
  FreeAndNil(sBookMarks);
end;

function TfrmLinks.GetLinkViews(Index: integer): integer;
var
  ini: TIniFile;
  sBookMarks: TStringList;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    sBookMarks := TStringList.Create;
    ini.ReadSections(sBookMarks);
    Result := ini.ReadInteger(sBookMarks[Index], 'VIEWS', 0);
  end;

  FreeAndNil(ini);
  FreeAndNil(sBookMarks);
end;

function TfrmLinks.GetLinkVotes(Index: integer): integer;
var
  ini: TIniFile;
  sBookMarks: TStringList;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    sBookMarks := TStringList.Create;
    ini.ReadSections(sBookMarks);
    Result := ini.ReadInteger(sBookMarks[Index], 'VOTES', 0);
  end;

  FreeAndNil(ini);
  FreeAndNil(sBookMarks);
end;

function TfrmLinks.GetLinkIcon(Index: integer): integer;
var
  ini: TIniFile;
  sBookMarks: TStringList;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    sBookMarks := TStringList.Create;
    ini.ReadSections(sBookMarks);
    Result := ini.ReadInteger(sBookMarks[Index], 'ICON', 0);
  end;

  FreeAndNil(ini);
  FreeAndNil(sBookMarks);
end;

procedure TfrmLinks.LoadLinks;
var
  I: integer;
  BookMarks: TStringList;
  ini: TIniFile;
  cName: string;
begin

  if FileExists(SelectedCatName) then
  begin
    BookMarks := TStringList.Create;
    ini := TIniFile.Create(SelectedCatName);
    ini.ReadSections(BookMarks);

    //Load into listbox
    LstLinks.Clear;

    for I := 0 to BookMarks.Count - 1 do
    begin
      cName := BookMarks[I];
      //Add link name to listbox
      LstLinks.Items.Add(cName);
    end;
  end;

  FreeAndNil(ini);
  FreeAndNil(BookMarks);
end;

procedure TfrmLinks.ErrorMsgCat(S: string);
begin
  MessageDlg(S, mtInformation, [mbOK], 0);
end;

procedure TfrmLinks.AddLinkInfo(lName, lAddress, lDesc: string; nIcon: integer);
var
  ini: TIniFile;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    //Check if bookmark is allready here.
    if ini.SectionExists(lName) then
    begin
      MessageDlg(BookmarkExsists, mtWarning, [mbOK], 0);
    end
    else
    begin
      ini.WriteString(lName, 'URL', lAddress);
      ini.WriteString(lName, 'INFO', lDesc);
      ini.WriteInteger(lName, 'VIEWS', 0);
      ini.WriteInteger(lName, 'VOTES', 0);
      ini.WriteInteger(lName, 'ICON', nIcon);
    end;
    //Clear up
    FreeAndNil(ini);
  end;
end;

procedure TfrmLinks.EditCatLink(oldName, NewName, lAddress, lDesc: string;
  nViews, nVotes, nIcon: integer);
var
  ini: TIniFile;
begin

  if FileExists(SelectedCatName) then
  begin
    //First delete the old selection
    ini := TIniFile.Create(SelectedCatName);
    ini.EraseSection(oldName);
    ini.WriteString(NewName, 'URL', lAddress);
    ini.WriteString(NewName, 'INFO', lDesc);
    ini.WriteInteger(NewName, 'VIEWS', nViews);
    ini.WriteInteger(NewName, 'VOTES', nVotes);
    ini.WriteInteger(NewName, 'ICON', nIcon);
  end;

  FreeAndNil(ini);

end;

procedure TfrmLinks.DupCatLink(NewName, lAddress, lDesc: string;
  nViews, nVotes, nIcon: integer);
var
  ini: TIniFile;
begin

  if FileExists(SelectedCatName) then
  begin
    //First delete the old selection
    ini := TIniFile.Create(SelectedCatName);

    if ini.SectionExists(NewName) then
    begin
      MessageDlg(BookmarkExsists, mtWarning, [mbOK], 0);
    end
    else
    begin
      ini.WriteString(NewName, 'URL', lAddress);
      ini.WriteString(NewName, 'INFO', lDesc);
      ini.WriteInteger(NewName, 'VIEWS', nViews);
      ini.WriteInteger(NewName, 'VOTES', nVotes);
      ini.WriteInteger(NewName, 'ICON', nIcon);
    end;
  end;

  FreeAndNil(ini);
end;

procedure TfrmLinks.DeleteLink(sName: string);
var
  ini: TIniFile;
begin

  if FileExists(SelectedCatName) then
  begin
    ini := TIniFile.Create(SelectedCatName);
    ini.EraseSection(sName);
  end;

  FreeAndNil(ini);
end;

procedure TfrmLinks.MoveLinkToCat(MoveFromCat, MoveToCat: string;
  sName, lDesc: string; nViews, nVotes, nIcon: integer);
var
  ini: TIniFile;
  sLink: string;
begin

  if FileExists(MoveFromCat) then
  begin
    ini := TIniFile.Create(MoveFromCat);
    sLink := ini.ReadString(sName, 'URL', '');
    ini.EraseSection(sName);
    ini := TIniFile.Create(MoveToCat);
    ini.WriteString(sName, 'URL', sLink);
    ini.WriteString(sName, 'INFO', lDesc);
    ini.WriteInteger(sName, 'VIEWS', nViews);
    ini.WriteInteger(sName, 'VOTES', nVotes);
    ini.WriteInteger(sName, 'ICON', nIcon);
  end;

  FreeAndNil(ini);
end;

procedure TfrmLinks.LoadCats;
var
  sr: TSearchRec;
begin
  if FindFirst(BasePath + '*.cat', faAnyFile, sr) = 0 then
  begin
    lstCats.Clear;
    repeat
      lstCats.Items.Add(TPath.GetFileNameWithoutExtension(sr.Name));
    until FindNext(sr) <> 0;
  end;
  if lstcats.Count > 0 then
  begin
    lstCats.ItemIndex := 0;
    lstCatsClick(nil);
  end;
end;

procedure TfrmLinks.AddCatIcon(cName: string; nIcon: integer);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(BasePath + 'folders.ini');
  ini.WriteInteger(cName, 'ICON', nIcon);
  FreeAndNil(ini);
end;

procedure TfrmLinks.EditCatName(cOldName, cNewName: string; nIcon: integer);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(BasePath + 'folders.ini');
  //Erase old selection.
  ini.EraseSection(cOldName);
  ini.WriteInteger(cNewName, 'ICON', nIcon);
  FreeAndNil(ini);
end;

procedure TfrmLinks.DeleteCatIcon(cName: string);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(BasePath + 'folders.ini');
  //Erase old selection.
  ini.EraseSection(cName);
  FreeAndNil(ini);
end;

function TfrmLinks.GetCatIcon(cName: string): integer;
var
  ini: TIniFile;
  nIcon: integer;
begin
  ini := TIniFile.Create(BasePath + 'folders.ini');
  nIcon := ini.ReadInteger(cName, 'ICON', 0);
  FreeAndNil(ini);
  Result := nIcon;
end;

procedure TfrmLinks.FormCreate(Sender: TObject);

begin
  InitListIcons;
  KeyPressCancel := False;
  Tray1.Hint := Caption;
  Tray1.Icon := Application.Icon;

  AppPath := ExtractFilePath(Application.ExeName);

  ExportTemplate := AppPath + 'export.tpl';

  BasePath := AppPath + 'profiles' + PathDelim;

  if not DirectoryExists(BasePath) then
  begin
    ForceDirectories(BasePath);
  end;
  ClearBookmarInfo;
  //Load web browsers menu
  LoadBrowsers;
  LoadCats;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.FormWindowStateChange(Sender: TObject);
begin
  if WindowState = wsMinimized then
  begin
    Tray1.Visible := True;
    Hide;
  end;
end;

procedure TfrmLinks.lblUrlClick(Sender: TObject);
begin
  LstLinksDblClick(Sender);
end;

procedure TfrmLinks.lblUrlMouseEnter(Sender: TObject);
begin
  lblUrl.Font.Color := clRed;
end;

procedure TfrmLinks.lblUrlMouseLeave(Sender: TObject);
begin
  lblUrl.Font.Color := clBlue;
end;

procedure TfrmLinks.cmdCatAddClick(Sender: TObject);
var
  frm: TfrmCatAdd;
begin

  Tools.ButtonPress := 0;
  frm := TfrmCatAdd.Create(self);
  frm.Caption := 'New';
  frm.cmdOK.Caption := 'Add';
  frm.ShowModal;

  if Tools.ButtonPress = 1 then
  begin
    case AddCatName(Tools.CatName) of
      0:
      begin
        ErrorMsgCat(BadCatName);
      end;
      1:
      begin
        ErrorMsgCat('The category name "' + Tools.CatName + '" already exists.');
      end;
      2:
      begin
        //Add to the listbox
        lstCats.Items.Add(Tools.CatName);
        //Add cat icon
        AddCatIcon(Tools.CatName, Tools.CatIcon);
        //Check for selected link name
        MoveToListIndex(Tools.CatName, lstCats);
        lstCatsClick(Sender);
      end;
      else
      begin
        Exit;
      end;
    end;
  end;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.cmdCatDeleteClick(Sender: TObject);
var
  cName: string;
  oIdx: integer;
begin

  oIdx := lstCats.ItemIndex;

  if oIdx <> -1 then
  begin
    cName := lstCats.Items[oIdx];
    if MessageDlg('You are about the delete the category "' +
      cName + '"' + sLineBreak + 'All links in this category will be removed.' +
      sLineBreak + sLineBreak + 'Are you sure you want to continue?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //Delete the file.
      DeleteFile(SelectedCatName);
      //Delete the cat icon
      DeleteCatIcon(cName);
      //Remove from the list
      lstCats.Items.Delete(lstCats.ItemIndex);
      //Clear the links
      LstLinks.Clear;
      ClearBookmarInfo;
    end;
  end;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.cmdCatDupClick(Sender: TObject);
var
  Idx: integer;
  sl: TStringList;
  lzOldFile, lzNewFile, lzTempFile: string;
begin
  idx := lstCats.ItemIndex;

  if idx <> -1 then
  begin
    //Get catname append _copy
    lzOldFile := lstCats.Items[idx];
    //New cat name
    lzNewFile := lzOldFile + '_copy';
    //Temp save data file.
    lzTempFile := BasePath + lzNewFile + '.cat';
    //Create string list
    sl := TStringList.Create;
    //Load the original cat data
    sl.LoadFromFile(BasePath + lzOldFile + '.cat');

    case AddCatName(lzNewFile) of
      0:
      begin
        ErrorMsgCat(BadCatName);
      end;
      1:
      begin
        ErrorMsgCat('The category name "' + lzNewFile + '" already exists.');
      end;
      2:
      begin
        //Add to the listbox
        lstCats.Items.Add(lzNewFile);
        AddCatIcon(lzNewFile, GetCatIcon(lzOldFile));
        //Copy the data from the old cat to the new cat
        sl.SaveToFile(lzTempFile);
        MoveToListIndex(lzNewFile, lstCats);
        lstCatsClick(Sender);
        //Destroy string list
        FreeAndNil(sl);
      end;
      else
      begin
        Exit;
      end;
    end;
    CountCatsAndBookmarks;
  end;
end;

procedure TfrmLinks.cmdCatEditClick(Sender: TObject);
var
  S, S1: string;
  frm: TfrmCatAdd;
begin
  if lstCats.ItemIndex <> -1 then
  begin
    S := lstCats.Items[lstCats.ItemIndex];
    S1 := S;

    Tools.ButtonPress := 0;
    frm := TfrmCatAdd.Create(self);
    frm.lblCatName.Text := S1;
    frm.cboIcons.ItemIndex := GetCatIcon(S1);
    frm.Caption := 'Edit';
    frm.cmdOK.Caption := 'Update';
    frm.ShowModal;

    if Tools.ButtonPress = 1 then
    begin
      S := Tools.CatName;
      case EditCat(S1, S) of
        0:
        begin
          ErrorMsgCat(BadCatName);
        end;
        2:
        begin
          //Add to the listbox
          lstCats.Sorted := False;
          lstCats.Items[lstCats.ItemIndex] := S;
          lstCats.Sorted := True;
          MoveToListIndex(S, lstCats);
          lstCatsClick(Sender);
        end;
      end;
      EditCatName(S1, S, Tools.CatIcon);
    end;
    FreeAndNil(frm);
  end;
end;

procedure TfrmLinks.cmdClearBookmarksClick(Sender: TObject);
var
  X: integer;
  oName: string;
begin
  if (lstCats.ItemIndex <> -1) and (LstLinks.Count > 0) then
  begin
    if MessageDlg('Are you sure you want to clear all the bookmarks?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      for X := 0 to LstLinks.Count - 1 do
      begin
        //Get bookmark to delete
        oName := LstLinks.Items[X];
        DeleteLink(oName);
      end;
      ClearBookmarInfo;
      CountCatsAndBookmarks;
      LoadLinks;
    end;
  end;
end;

procedure TfrmLinks.cmdExportLinksClick(Sender: TObject);
var
  po: TPoint;
begin
  //Display export menu under export button.
  po := TPoint.Create(0, 0);
  GetCursorPos(po);
  mnuExport.PopUp(po.X, po.Y + 4);
end;

procedure TfrmLinks.cmdLinkAddClick(Sender: TObject);
var
  frm: TfrmAddLink;
begin

  if lstCats.ItemIndex <> -1 then
  begin
    Tools.ButtonPress := 0;
    frm := TfrmAddLink.Create(self);
    frm.cmdOK.Caption := 'Add';
    frm.Caption := 'New';
    frm.ShowModal;
    if ButtonPress = 1 then
    begin
      AddLinkInfo(Tools.LinkName, Tools.LinkUrl, Tools.LinkDesc, Tools.LinkIcon);
      //Reload links
      LoadLinks;
      MoveToListIndex(Tools.LinkName, LstLinks);
      LstLinksClick(Sender);
      KeyPressCancel := True;
    end;
    FreeAndNil(frm);
  end;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.cmdLinkEditClick(Sender: TObject);
var
  frm: TfrmAddLink;
  oName: string;
  oViews: integer;
  oIdx: integer;
begin

  oIdx := LstLinks.ItemIndex;

  if (lstCats.ItemIndex <> -1) and (oIdx <> -1) then
  begin
    Tools.ButtonPress := 0;
    frm := TfrmAddLink.Create(self);
    frm.cmdOK.Caption := 'Update';
    frm.Caption := 'Edit';
    oName := GetLinkName(oIdx);
    oViews := GetLinkViews(oIdx);
    frm.lblLinkName.Text := oName;
    frm.lblLinkAddress.Text := GetLinkUrl(oIdx);
    frm.lblDescription.Text := GetLinkDescription(oIdx);
    frm.cboIcons.ItemIndex := GetLinkIcon(oIdx);
    frm.ShowModal;
    if ButtonPress = 1 then
    begin
      //Update catLinks.
      EditCatLink(oName, Tools.LinkName, Tools.LinkUrl,
        Tools.LinkDesc, oViews, GetLinkVotes(oIdx), Tools.LinkIcon);
      //Reload links
      LoadLinks;
      MoveToListIndex(Tools.LinkName, LstLinks);
      LstLinksClick(Sender);
      KeyPressCancel := True;
    end;
    FreeAndNil(frm);
  end;
end;

procedure TfrmLinks.cmdLinksDeleteClick(Sender: TObject);
var
  oId: integer;
  oName: string;
begin
  oId := LstLinks.ItemIndex;

  if (lstCats.ItemIndex <> -1) and (oId <> -1) then
  begin
    if MessageDlg('Are you sure you want to delete the bookmark:' +
      sLineBreak + sLineBreak + '"' + LstLinks.Items[oId] + '"',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      //Get name
      oName := GetLinkName(oId);
      //Delete the link
      DeleteLink(oName);
      ClearBookmarInfo;
      LoadLinks;
    end;
  end;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.cmdMoveLinkClick(Sender: TObject);
var
  frm: TfrmMoveLink;
  oId: integer;
  oName: string;
  lzCatFile: string;
begin
  oId := LstLinks.ItemIndex;

  if (lstCats.ItemIndex <> -1) and (oId <> -1) then
  begin
    Tools.ButtonPress := 0;
    Tools.LinksMoveFromCat := lstCats.Items[lstCats.ItemIndex];
    //Get link name
    oName := GetLinkName(oId);
    frm := TfrmMoveLink.Create(self);
    frm.ShowModal;
    if Tools.ButtonPress = 1 then
    begin
      //New file to move to
      lzCatFile := BasePath + Tools.LinksMoveToCat + '.cat';
      //Do the move
      MoveLinkToCat(SelectedCatName, lzCatFile, oName,
        GetLinkDescription(oId), GetLinkViews(oId),
        GetLinkVotes(oId), GetLinkIcon(oId));
      //Delete the item from the list.
      LstLinks.Items.Delete(oId);
      ClearBookmarInfo;
    end;
    FreeAndNil(frm);
  end;
end;

procedure TfrmLinks.cmdOpenLinkClick(Sender: TObject);
begin
  LstLinksDblClick(Sender);
end;

procedure TfrmLinks.cmdRestoreClick(Sender: TObject);
begin
  RestoreLinks;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.cmdShareTwitterClick(Sender: TObject);
var
  ID: integer;
  frm: TfrmShareLink;
begin
  ID := LstLinks.ItemIndex;
  Tools.ButtonPress := 0;
  //Email a link to someone
  if (lstCats.ItemIndex <> -1) and (ID <> -1) then
  begin
    frm := TfrmShareLink.Create(self);
    Tools.LinkShareUrl := GetLinkUrl(ID);
    frm.ShowModal;
    if ButtonPress = 1 then
    begin
      OpenURL(Tools.LinkShareSrc);
    end;
    FreeAndNil(frm);
  end;
end;

procedure TfrmLinks.cmdShortcutClick(Sender: TObject);
var
  tf: TextFile;
  ID: integer;
  lzFile, cName, cUrl: string;
begin

  ID := LstLinks.ItemIndex;

  if (lstCats.ItemIndex <> -1) and (ID <> -1) then
  begin
    cName := GetLinkName(ID);
    cUrl := GetLinkUrl(ID);

    lzFile := GetDlgSaveName('Save Shortcut', 'Shortcut Files(*.url)|*.url',
      cName, 'url');

    if lzFile <> '' then
    begin
      //Write internet shortcut
      AssignFile(tf, lzFile);
      Rewrite(tf);
      Writeln(tf, '[InternetShortcut]');
      Writeln(tf, 'URL=' + cUrl);
      CloseFile(tf);
    end;
  end;
end;

procedure TfrmLinks.cmdUrlCpyClick(Sender: TObject);
var
  oName, NewName, oDesc, oLink: string;
  oViews: integer;
  oIdx: integer;
begin

  oIdx := LstLinks.ItemIndex;

  if (lstCats.ItemIndex <> -1) and (oIdx <> -1) then
  begin
    oName := GetLinkName(oIdx);
    oViews := GetLinkViews(oIdx);
    oDesc := GetLinkDescription(oIdx);
    oLink := GetLinkUrl(oIdx);
    NewName := oName + '_copy';
    //Dup catLinks.
    DupCatLink(NewName, oLink, oDesc, oViews,
      GetLinkVotes(oIdx), GetLinkIcon(oIdx));
    //Reload links
    LoadLinks;
    //Move to last bookmark added.
    MoveToListIndex(NewName, LstLinks);
    LstLinksClick(Sender);
  end;
  CountCatsAndBookmarks;
end;

procedure TfrmLinks.cmdBackupClick(Sender: TObject);
begin
  BackupLinks;
end;

procedure TfrmLinks.cmdAboutClick(Sender: TObject);
var
  frm: TfrmAbout;
begin
  frm := TfrmAbout.Create(self);
  frm.ShowModal;
  FreeAndNil(frm);
end;

procedure TfrmLinks.lstCatsClick(Sender: TObject);
var
  cName: string;
  oIdx: integer;
begin

  oIdx := lstCats.ItemIndex;

  if (oIdx <> -1) then
  begin
    cName := lstCats.Items[lstCats.ItemIndex];
    SelectedCatName := BasePath + cName + '.cat';
    //Load links into listbox.
    LoadLinks;
    ClearBookmarInfo;
    CountCatsAndBookmarks;
  end;
end;

procedure TfrmLinks.lstCatsDblClick(Sender: TObject);
begin
  cmdCatEditClick(Sender);
end;

procedure TfrmLinks.lstCatsDrawItem(Control: TWinControl; Index: integer;
  ARect: TRect; State: TOwnerDrawState);
var
  YPos: integer;
begin
  if odSelected in State then
  begin
    lstCats.Canvas.Brush.Color := $00A87189;
  end;
  //Draw the icons in the listbox
  lstCats.Canvas.FillRect(ARect);
  //Draw the icon on the listbox from the image list.

  frmIcons.LstFolders.Draw(lstCats.Canvas, ARect.Left + 4, ARect.Top + 4,
    GetCatIcon(lstCats.Items.Strings[Index]));
  //Align text
  YPos := (ARect.Bottom - ARect.Top - lstCats.Canvas.TextHeight(Text)) div 2;
  //Write the list item text
  lstCats.Canvas.TextOut(ARect.left + frmIcons.LstFolders.Width + 8, ARect.Top + YPos,
    lstCats.Items.Strings[index]);

end;

procedure TfrmLinks.lstCatsKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
  begin
    cmdCatDeleteClick(Sender);
  end;
  if Key = VK_RETURN then
  begin
    cmdCatEditClick(Sender);
  end;
end;

procedure TfrmLinks.lstCatsMeasureItem(Control: TWinControl; Index: integer;
  var AHeight: integer);
begin
  AHeight := frmIcons.LstFolders.Height + 8;
end;

procedure TfrmLinks.LstLinksClick(Sender: TObject);
var
  oIdx: integer;
begin
  oIdx := LstLinks.ItemIndex;

  if (lstCats.ItemIndex <> -1) and (oIdx <> -1) then
  begin
    lblUrl.Caption := GetLinkUrl(oIdx);
    txtDesc.Text := GetLinkDescription(oIdx);
  end;
end;

procedure TfrmLinks.LstLinksDblClick(Sender: TObject);
var
  oIdx: integer;
  ini: TIniFile;
  bDefault: integer;
begin
  oIdx := LstLinks.ItemIndex;
  if oIdx <> -1 then
  begin
    ini := TIniFile.Create(AppPath + 'browsers.ini');
    //Get default borwser
    bDefault := ini.ReadInteger('Browsers', 'default', 0);
    FreeAndNil(ini);

    if bDefault = 0 then
      OpenURL(GetLinkUrl(oIdx))
    else
      OpenInBrowser(bDefault);
  end;
end;

procedure TfrmLinks.LstLinksDrawItem(Control: TWinControl; Index: integer;
  ARect: TRect; State: TOwnerDrawState);
var
  YPos: integer;
begin
  //Draw the icons in the listbox
  if odSelected in State then
  begin
    LstLinks.Canvas.Brush.Color := $00A0637D;
  end;
  LstLinks.Canvas.FillRect(ARect);
  //Draw the icon on the listbox from the image list.
  frmIcons.ilstBookmarks.Draw(LstLinks.Canvas, ARect.Left + 4,
    ARect.Top + 4, GetLinkIcon(Index));
  //Align text
  YPos := (ARect.Bottom - ARect.Top - LstLinks.Canvas.TextHeight(Text)) div 2;
  //Write the list item text
  LstLinks.Canvas.TextOut(ARect.left + frmIcons.ilstBookmarks.Width +
    8, ARect.Top + YPos,
    LstLinks.Items.Strings[index]);

end;

procedure TfrmLinks.LstLinksKeyUp(Sender: TObject; var Key: word; Shift: TShiftState);
begin
  if not KeyPressCancel then
  begin
    if Key = VK_DELETE then
    begin
      cmdLinksDeleteClick(Sender);
    end;
    if Key = VK_RETURN then
    begin
      cmdOpenLinkClick(Sender);
    end;
  end;
  KeyPressCancel := False;
end;

procedure TfrmLinks.LstLinksMeasureItem(Control: TWinControl;
  Index: integer; var AHeight: integer);
begin
  AHeight := frmIcons.lstBookmarks.Height + 8;
end;

procedure TfrmLinks.mnuCatDeleteClick(Sender: TObject);
begin
  cmdCatDeleteClick(Sender);
end;

procedure TfrmLinks.mnuCatEditClick(Sender: TObject);
begin
  cmdCatEditClick(Sender);
end;

procedure TfrmLinks.mnuCatExportClick(Sender: TObject);
var
  lzCopyFrom, lzCatName, lzFile: string;
  sData: TStringList;
begin

  if lstCats.ItemIndex <> -1 then
  begin
    lzCatName := lstCats.Items[lstCats.ItemIndex];
    lzCopyFrom := BasePath + lzCatName + '.cat';
    sData := TStringList.Create;

    //Get save filename
    lzFile := GetDlgSaveName('Export', 'Cat Files(*.cat)|*.cat', lzCatName, 'cat');

    if lzFile <> '' then
    begin
      sData.LoadFromFile(lzCopyFrom);
      sData.SaveToFile(lzFile);
    end;

    FreeAndNil(sData);
  end;
end;

procedure TfrmLinks.mnuCatInportLinksClick(Sender: TObject);
var
  lzFile, lzCopyFile, sLinkName: string;
  sData: TStringList;
  oId: integer;
  tf: TextFile;
begin

  oId := LstLinks.ItemIndex;
  sData := TStringList.Create;

  //Check for vaild index
  if oId <> -1 then
  begin
    //Get selected link name
    sLinkName := GetLinkName(oId);
  end;

  if (lstCats.ItemIndex <> -1) then
  begin
    //Get open filename
    lzFile := GetDlgOpenName('Import', 'Cat Files(*.cat)|*.cat');
    lzCopyFile := BasePath + ExtractFileName(lzFile);

    if lzFile <> '' then
    begin
      if FileExists(lzCopyFile) then
      begin
        //Open the source file
        sData.LoadFromFile(lzFile);
        //Load sData into CatLinks object
        if FileExists(SelectedCatName) then
        begin
          AssignFile(tf, SelectedCatName);
          Append(tf);
          Writeln(tf, Trim(sData.Text));
          CloseFile(tf);
        end;
        LoadLinks;
        MoveToListIndex(sLinkName, LstLinks);
      end
      else
      begin
        sData.LoadFromFile(lzFile);
        sData.SaveToFile(lzCopyFile);
        LoadCats;
      end;
    end;
  end
  else
  begin
    lzFile := GetDlgOpenName('Import', 'Cat Files(*.cat)|*.cat');
    if lzFile <> '' then
    begin
      sData.LoadFromFile(lzFile);
      lzCopyFile := BasePath + ExtractFileName(lzFile);
      sData.SaveToFile(lzCopyFile);
      LoadCats;
    end;
  end;
  if sData <> nil then
    FreeAndNil(sData);
end;

procedure TfrmLinks.mnuClearBookmarksClick(Sender: TObject);
begin
  cmdClearBookmarksClick(Sender);
end;

procedure TfrmLinks.mnuCopyUrlClick(Sender: TObject);
begin
  cmdUrlCpyClick(Sender);
end;

procedure TfrmLinks.cmdExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfrmLinks.mnuExportFavClick(Sender: TObject);
begin
  ExportToIEFav;
end;

procedure TfrmLinks.mnuExportHtmlClick(Sender: TObject);
begin
  ExportToHtml;
end;

procedure TfrmLinks.mnuLinkDeleteClick(Sender: TObject);
begin
  cmdLinksDeleteClick(Sender);
end;

procedure TfrmLinks.mnuLinkEditClick(Sender: TObject);
begin
  cmdLinkEditClick(Sender);
end;

procedure TfrmLinks.mnuLinkMoveClick(Sender: TObject);
begin
  cmdMoveLinkClick(Sender);
end;

procedure TfrmLinks.mnuLinkNewClick(Sender: TObject);
begin
  cmdLinkAddClick(Sender);
end;

procedure TfrmLinks.mnuMakeCopyClick(Sender: TObject);
begin
  cmdCatDupClick(Sender);
end;

procedure TfrmLinks.mnuNewCatClick(Sender: TObject);
begin
  cmdCatAddClick(Sender);
end;

procedure TfrmLinks.mnuShareBookmarkClick(Sender: TObject);
begin
  cmdShareTwitterClick(Sender);
end;

procedure TfrmLinks.mnuShortcutClick(Sender: TObject);
begin
  cmdShortcutClick(Sender);
end;

procedure TfrmLinks.mnuTrayAboutClick(Sender: TObject);
begin
  cmdAboutClick(Sender);
end;

procedure TfrmLinks.mnuTrayExitClick(Sender: TObject);
begin
  cmdExitClick(Sender);
end;

procedure TfrmLinks.Tray1Click(Sender: TObject);
begin
  if WindowState = wsMinimized then
  begin
    Tray1.Visible := False;
    WindowState := wsNormal;
    Show;
  end;
end;

procedure TfrmLinks.txtSearchCatsChange(Sender: TObject);
begin
  SearchListBox(txtSearchCats.Text, lstCats);
  lstCatsClick(Sender);
end;

procedure TfrmLinks.txtSearchLinksChange(Sender: TObject);
begin
  SearchListBox(txtSearchLinks.Text, LstLinks);
  LstLinksClick(Sender);
end;

end.
