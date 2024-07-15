unit listimages;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.ImageList, Vcl.ImgList;

type

  { TfrmTemp }

  TfrmTemp = class(TForm)
    LstFolders: TImageList;
    lstBookmarks: TImageList;
    procedure FormCreate(Sender: TObject);
  private

  public
    iLstFolders: TImageList;
    ilstBookmarks: TImageList;
  end;

var
  frmTemp: TfrmTemp;

implementation

{$R *.dfm}

{ TfrmTemp }

procedure TfrmTemp.FormCreate(Sender: TObject);
begin
  ilstBookmarks := TImageList.Create(self);
  iLstFolders := TImageList.Create(self);
  ilstBookmarks := lstBookmarks;
  iLstFolders := LstFolders;
end;

end.
