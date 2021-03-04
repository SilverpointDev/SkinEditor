program SkinEditor;

uses
  Forms,
  frmMain in 'frmMain.pas' {Form1},
  UUtils in 'UUtils.pas',
  frmPreviewFrame in 'frmPreviewFrame.pas' {PreviewFrame: TFrame},
  frmNewSkin in 'frmNewSkin.pas' {NewSkinForm},
  frmAbout in 'frmAbout.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Silverpoint SkinEditor';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
