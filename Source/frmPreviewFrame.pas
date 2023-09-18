unit frmPreviewFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, ComCtrls, ImgList, Pngimage,
  TB2Dock, TB2Toolbar, TB2Item, SpTBXSkins, SpTBXItem,
  SpTBXDkPanels, SpTBXTabs, SpTBXControls, SpTBXEditors, System.ImageList;

type
  TPreviewFrame = class(TFrame)
    SpTBXTitleBar1: TSpTBXTitleBar;
    SpTBXTabControl1: TSpTBXTabControl;
    SpTBXTabItem1: TSpTBXTabItem;
    SpTBXTabItem2: TSpTBXTabItem;
    SpTBXTabSheet2: TSpTBXTabSheet;
    SpTBXMultiDock1: TSpTBXMultiDock;
    SpTBXDockablePanel1: TSpTBXDockablePanel;
    SpTBXSplitter1: TSpTBXSplitter;
    SpTBXPanel1: TSpTBXPanel;
    SpTBXGroupBox4: TSpTBXGroupBox;
    SpTBXTabSheet1: TSpTBXTabSheet;
    SpTBXGroupBox1: TSpTBXGroupBox;
    SpTBXButton1: TSpTBXButton;
    SpTBXButton2: TSpTBXButton;
    SpTBXButton3: TSpTBXButton;
    SpTBXCheckBox1: TSpTBXCheckBox;
    SpTBXCheckBox2: TSpTBXCheckBox;
    SpTBXCheckBox3: TSpTBXCheckBox;
    SpTBXRadioButton1: TSpTBXRadioButton;
    SpTBXRadioButton2: TSpTBXRadioButton;
    SpTBXRadioButton3: TSpTBXRadioButton;
    SpTBXGroupBox2: TSpTBXGroupBox;
    SpTBXEdit1: TSpTBXEdit;
    SpTBXComboBox1: TSpTBXComboBox;
    SpTBXPanel2: TSpTBXPanel;
    Panel5: TPanel;
    SpTBXSpeedButton1: TSpTBXSpeedButton;
    SpTBXSpeedButton2: TSpTBXSpeedButton;
    SpTBXListBox1: TSpTBXListBox;
    SpTBXGroupBox3: TSpTBXGroupBox;
    SpTBXProgressBar1: TSpTBXProgressBar;
    SpTBXTrackBar1: TSpTBXTrackBar;
    SpTBXDock1: TSpTBXDock;
    SpTBXToolbar1: TSpTBXToolbar;
    SpTBXSubmenuItem1: TSpTBXSubmenuItem;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXItem4: TSpTBXItem;
    SpTBXItemMenuSeparator1: TSpTBXSeparatorItem;
    SpTBXItemMenu1: TSpTBXItem;
    SpTBXItemMenu2: TSpTBXItem;
    SpTBXItemMenu3: TSpTBXItem;
    SpTBXToolbar2: TSpTBXToolbar;
    SpTBXItemToolbar1: TSpTBXItem;
    SpTBXItemToolbarSeparator1: TSpTBXSeparatorItem;
    SpTBXItemToolbar2: TSpTBXItem;
    SpTBXStatusBar2: TSpTBXStatusBar;
    SpTBXItem9: TSpTBXItem;
    SpTBXSeparatorItem4: TSpTBXSeparatorItem;
    SpTBXItem10: TSpTBXItem;
    SpTBXPopupMenu1: TSpTBXPopupMenu;
    TBGroupItem1: TTBGroupItem;
    Timer1: TTimer;
    SpTBXGroupBox5: TSpTBXGroupBox;
    SpTBXGroupBox6: TSpTBXGroupBox;
    ImageList1: TImageList;
    procedure SpTBXDockablePanel1CloseQuery(Sender: TObject;
      var CanClose: Boolean);
    procedure SpTBXSpeedButton1Draw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; const PaintStage: TSpTBXPaintStage;
      var PaintDefault: Boolean);
    procedure SpTBXCheckBox1Click(Sender: TObject);
    procedure SpTBXRadioButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure SpTBXSpeedButton1DrawCaption(Sender: TObject; ACanvas: TCanvas;
      ClientAreaRect: TRect; State: TSpTBXSkinStatesType; var ACaption: string;
      var CaptionRect: TRect; var CaptionFormat: Cardinal;
      IsTextRotated: Boolean; const PaintStage: TSpTBXPaintStage;
      var PaintDefault: Boolean);
  private
    FScreenshotFilename: string;
  protected
    procedure Loaded; override;
  public
    procedure SaveScreenshot(Filename: string);
  end;

implementation

{$R *.dfm}

type
  TTBCustomItemAccess = class(TTBCustomItem);

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Screenshot }

procedure SpScreenShot(SourceR: TRect; DestCanvas: TCanvas; DestR: TRect);
var
  DesktopDC: HDC;
begin
  DesktopDC := GetDC(0);
  try
    Windows.StretchBlt(
      DestCanvas.Handle, DestR.Left, DestR.Top, DestR.Right - DestR.Left, DestR.Bottom - DestR.Top,
      DesktopDC, SourceR.Left, SourceR.Top, SourceR.Right - SourceR.Left, SourceR.Bottom - SourceR.Top,
      SRCCOPY);
  finally
    ReleaseDC(0, DesktopDC);
  end;
end;

procedure TPreviewFrame.SaveScreenshot(Filename: string);
var
  P: TPoint;
begin
  // Prepare the controls
  FScreenshotFilename := Filename;
  SpTBXTabControl1.ActiveTabIndex := 0;
  SpTBXListBox1.ItemIndex := 0;
  SpTBXTrackBar1.Position := 3;
  SpTBXDock1.BeginUpdate;
  try
    SpTBXToolbar1.DockRow := 0;
    SpTBXToolbar1.DockPos := 0;
    SpTBXToolbar2.DockRow := 1;
    SpTBXToolbar2.DockPos := 0;
  finally
    SpTBXDock1.EndUpdate;
  end;
  Screen.ActiveForm.ActiveControl := nil;

  // Activate the timer and show the popup
  P := Self.ClientToScreen(SpTBXTitleBar1.BoundsRect.TopLeft);
  Inc(P.X, SpTBXTitleBar1.Width - 150);
  Inc(P.Y, 28);
  Timer1.Enabled := True;
  TTBCustomItemAccess(SpTBXPopupMenu1.Items).OpenPopup(True, True, P, tbpaLeft, False);
end;

procedure TPreviewFrame.Timer1Timer(Sender: TObject);
var
  B: TBitmap;
  PNG: TPngImage;
  P: TPoint;
  OrigR, DestR: TRect;
begin
  Timer1.Enabled := False;

  PNG := TPngImage.Create;
  B := TBitmap.Create;
  try
    P := Self.ClientToScreen(SpTBXTitleBar1.BoundsRect.TopLeft);
    OrigR := Bounds(P.X, P.Y, SpTBXTitleBar1.Width, SpTBXTitleBar1.Height);
    DestR := Rect(0, 0, SpTBXTitleBar1.Width, SpTBXTitleBar1.Height);
    B.Width := SpTBXTitleBar1.Width;
    B.Height := SpTBXTitleBar1.Height;
    SpScreenShot(OrigR, B.Canvas, DestR);
    PNG.Assign(B);
    PNG.SaveToFile(FScreenshotFilename);
  finally
    B.Free;
    PNG.Free;
  end;

  // Close the popup
  SetCapture(0);
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Form }

procedure TPreviewFrame.Loaded;
begin
  inherited;
  SpTBXTitleBar1.MouseActive := False;
end;

procedure TPreviewFrame.SpTBXDockablePanel1CloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := False;
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Controls }

procedure TPreviewFrame.SpTBXCheckBox1Click(Sender: TObject);
// Shared by SpTBXCheckBox1..2
begin
  SpTBXCheckBox1.Checked := False;
  SpTBXCheckBox2.Checked := True;
end;

procedure TPreviewFrame.SpTBXRadioButton1Click(Sender: TObject);
// Shared by SpTBXRadioButton1..2
begin
  SpTBXRadioButton1.Checked := False;
  SpTBXRadioButton2.Checked := True;
end;

procedure TPreviewFrame.SpTBXSpeedButton1Draw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; const PaintStage: TSpTBXPaintStage; var PaintDefault: Boolean);
var
  SB: TSpTBXSpeedButton;
begin
  if PaintStage = pstPrePaint then begin
    PaintDefault := False;
    SB := TSpTBXSpeedButton(Sender);
    SpDrawXPHeader(nil, ACanvas, ARect, SB.MouseInControl, SB.Pushed, CurrentPPI);
  end;
end;

procedure TPreviewFrame.SpTBXSpeedButton1DrawCaption(Sender: TObject;
  ACanvas: TCanvas; ClientAreaRect: TRect; State: TSpTBXSkinStatesType;
  var ACaption: string; var CaptionRect: TRect; var CaptionFormat: Cardinal;
  IsTextRotated: Boolean; const PaintStage: TSpTBXPaintStage;
  var PaintDefault: Boolean);
begin
  if PaintStage = pstPrePaint then
    ACanvas.Font.Color := CurrentSkin.Options(skncHeader, State).TextColor;
end;

end.
