unit frmAbout;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, SpTBXSkins, SpTBXItem, SpTBXControls, pngimage;

type
  TAboutForm = class(TForm)
    Button1: TButton;
    Image1: TImage;
    Panel1: TPanel;
    lblTitle: TLabel;
    lblVersion: TLabel;
    lblCopyright: TLabel;
    SpTBXLabel1: TSpTBXLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
