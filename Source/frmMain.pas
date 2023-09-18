unit frmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, ExtCtrls, ComCtrls, Menus, ActnList, ToolWin,
  CategoryButtons, XPMan,
  TB2Item, TB2Dock, TB2Toolbar, SpTBXSkins, SpTBXItem, SpTBXControls,
  SpTBXDkPanels, SpTBXTabs, SpTBXEditors, SpTBXExtEditors, SpTBXDefaultSkins,
  frmPreviewFrame, System.Actions, System.ImageList;

const
  rvSkinEditorCaption = 'Silverpoint SkinEditor';
  rvSkinEditorEmptyCaption = 'Untitled - ' + rvSkinEditorCaption;
  rvSkinEditorVersion = 'Version 1.0.6';
  rvSkinEditorCopyright = 'Copyright (C) 2023 Robert Lee. All rights reserved.';

type
  TForm1 = class(TForm)
    CategoryButtons1: TCategoryButtons;
    pnlComponents: TPanel;
    pnlPreview: TPanel;
    pnlProperties: TPanel;
    Splitter1: TSplitter;
    StatusBar1: TStatusBar;
    pnlEditor: TPanel;
    pnlMenu: TPanel;
    MainMenu1: TMainMenu;
    mFile1: TMenuItem;
    mNew1: TMenuItem;
    mOpen1: TMenuItem;
    mSave1: TMenuItem;
    mSaveAs1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    aCopy: TAction;
    aPaste: TAction;
    aPasteBody: TAction;
    aPasteBorders: TAction;
    aPasteText: TAction;
    aNew: TAction;
    aOpen: TAction;
    aSave: TAction;
    aSaveAs: TAction;
    mEdit1: TMenuItem;
    mCopy1: TMenuItem;
    mPaste1: TMenuItem;
    mPasteSpecial: TMenuItem;
    mPasteBody1: TMenuItem;
    mPasteBorders1: TMenuItem;
    mPasteText1: TMenuItem;
    smCopy1: TMenuItem;
    smPaste1: TMenuItem;
    smPasteSpecial1: TMenuItem;
    smPasteBody1: TMenuItem;
    smPasteBorders1: TMenuItem;
    smPasteText1: TMenuItem;
    ImageList1: TImageList;
    edSplitter2: TSplitter;
    pnlPropertiesEdLeft: TPanel;
    lblBodyTitle1: TSpTBXLabel;
    lblBody1: TSpTBXLabel;
    lblBody4: TSpTBXLabel;
    lblBody3: TSpTBXLabel;
    lblBody2: TSpTBXLabel;
    lblBordersTitle1: TSpTBXLabel;
    lblBodyType: TSpTBXLabel;
    lblBordersType: TSpTBXLabel;
    lblBorders1: TSpTBXLabel;
    lblBorders2: TSpTBXLabel;
    lblBorders3: TSpTBXLabel;
    lblBorders4: TSpTBXLabel;
    pnlPropertiesEdRight: TPanel;
    lblBodyTitle2: TSpTBXLabel;
    edBody4: TSpTBXColorEdit;
    edBody3: TSpTBXColorEdit;
    edBody2: TSpTBXColorEdit;
    edBody1: TSpTBXColorEdit;
    lblBordersTitle2: TSpTBXLabel;
    edBordersType: TSpTBXComboBox;
    edBodyType: TSpTBXComboBox;
    edBorders4: TSpTBXColorEdit;
    edBorders1: TSpTBXColorEdit;
    edBorders3: TSpTBXColorEdit;
    edBorders2: TSpTBXColorEdit;
    pnlRight: TPanel;
    pnlPropertiesEd: TPanel;
    lblTextTitle1: TSpTBXLabel;
    lblTextTitle2: TSpTBXLabel;
    lblText1: TSpTBXLabel;
    edText1: TSpTBXColorEdit;
    lblPropertiesTitle: TSpTBXLabel;
    lblGeneralPropertiesTitle: TSpTBXLabel;
    pnlPropertiesGeneral: TPanel;
    pnlGeneralEdLeft: TPanel;
    lblSkinName: TSpTBXLabel;
    lblSkinOfficeMenu: TSpTBXLabel;
    lblSkinOfficeIcons: TSpTBXLabel;
    lblSkinAuthor: TSpTBXLabel;
    lblSkinOfficeStatusbar: TSpTBXLabel;
    edSplitter1: TSplitter;
    pnlGeneralEdRight: TPanel;
    edSkinAuthor: TSpTBXEdit;
    edSkinName: TSpTBXEdit;
    edSkinOfficeIcons: TSpTBXComboBox;
    edSkinOfficeMenu: TSpTBXComboBox;
    edSkinOfficeStatusbar: TSpTBXComboBox;
    lblElementsTitle: TSpTBXLabel;
    lblPreviewTitle: TSpTBXLabel;
    N1: TMenuItem;
    mExit1: TMenuItem;
    aExit: TAction;
    mHelp1: TMenuItem;
    mAbout1: TMenuItem;
    aAbout: TAction;
    aHelp: TAction;
    aCheckUpdates: TAction;
    mHelp2: TMenuItem;
    mCheckforUpdates1: TMenuItem;
    N2: TMenuItem;
    Splitter2: TSplitter;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CategoryButtons1DrawButton(Sender: TObject;
      const Button: TButtonItem; Canvas: TCanvas; Rect: TRect;
      State: TButtonDrawState);
    procedure CategoryButtons1SelectedItemChange(Sender: TObject;
      const Button: TButtonItem);
    procedure pnlPreviewAlignPosition(Sender: TWinControl; Control: TControl;
      var NewLeft, NewTop, NewWidth, NewHeight: Integer; var AlignRect: TRect;
      AlignInfo: TAlignInfo);
    procedure aNewExecute(Sender: TObject);
    procedure aOpenExecute(Sender: TObject);
    procedure aSaveExecute(Sender: TObject);
    procedure aSaveAsExecute(Sender: TObject);
    procedure aCopyExecute(Sender: TObject);
    procedure aPasteExecute(Sender: TObject);
    procedure aPasteBodyExecute(Sender: TObject);
    procedure aPasteBordersExecute(Sender: TObject);
    procedure aPasteTextExecute(Sender: TObject);
    procedure CategoryButtons1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);

    procedure edTypeDrawBackground(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; const PaintStage: TSpTBXPaintStage;
      var PaintDefault: Boolean);
    procedure edEnter(Sender: TObject);
    procedure edExit(Sender: TObject);
    procedure edChanged(Sender: TObject);
    procedure edlblClick(Sender: TObject);
    procedure edlblPropertiesDraw(Sender: TObject; ACanvas: TCanvas; ARect: TRect;
      const PaintStage: TSpTBXPaintStage; var PaintDefault: Boolean);
    procedure edSplittersMoved(Sender: TObject);
    procedure aExitExecute(Sender: TObject);
    procedure edKeyPress(Sender: TObject; var Key: Char);
    procedure aHelpExecute(Sender: TObject);
    procedure aCheckUpdatesExecute(Sender: TObject);
    procedure aAboutExecute(Sender: TObject);
  private
    { Private declarations }
    FLoadingInspector: Boolean;
    FPreviewFrame: TPreviewFrame;
    FSkinFilePath: string;
    FSkinModified: Boolean;
    function CanOpenNewFile: Boolean;
    function SaveFile(SaveDialog: Boolean = False): Boolean;
    procedure InitForm;
    procedure InitCategoryButtons;
    procedure UpdateInspector;
    procedure UpdateSkin;
    procedure InvalidatePreview;
  public
    { Public declarations }
    FSelectedElement: TSpTBXSkinOptionCategory;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses
  UUtils, frmAbout, frmNewSkin;

type
  TWinControlAccess = class(TWinControl);

function TForm1.CanOpenNewFile: Boolean;
var
  I: Integer;
begin
  if FSkinModified then begin
    I := Application.MessageBox('Save changes to the current skin?', PWideChar(Caption),
      mb_applmodal + mb_iconwarning + mb_yesnocancel);
    if I = mrYes then
      Result := SaveFile
    else
      Result := I <> mrCancel;
  end
  else
    Result := True;
end;

function TForm1.SaveFile(SaveDialog: Boolean): Boolean;
begin
  Result := False;

  if Trim(CurrentSkin.SkinName) = '' then begin
    Application.MessageBox('The Skin Name cannot be empty. Please specify a valid Skin Name.', PWideChar(Caption),
      mb_applmodal + mb_iconwarning + mb_ok);
    Exit;
  end;

  if not SaveDialog and FileExists(FSkinFilePath) then
    Result := True
  else begin
    if SaveDialog1.Execute then begin
      FSkinFilePath := SaveDialog1.FileName;
      Caption := ExtractFileName(FSkinFilePath) + ' - ' + rvSkinEditorCaption;
      Result := True;
    end;
  end;

  // Save the file and screenshot
  if Result then begin
    CurrentSkin.SaveToFile(FSkinFilePath);
    FPreviewFrame.SaveScreenshot(ChangeFileExt(FSkinFilePath, '.png'));
    FSkinModified := False;
  end;
end;

procedure TForm1.InitForm;
begin
  InitCategoryButtons;

  // Initialize the Property Editors, the Tag links to the corresponding Label
  edSkinName.Tag := Integer(lblSkinName);
  edSkinAuthor.Tag := Integer(lblSkinAuthor);
  edSkinOfficeIcons.Tag := Integer(lblSkinOfficeIcons);
  edSkinOfficeMenu.Tag := Integer(lblSkinOfficeMenu);
  edSkinOfficeStatusbar.Tag := Integer(lblSkinOfficeStatusbar);

  edBodyType.Tag := Integer(lblBodyType);
  edBody1.Tag := Integer(lblBody1);
  edBody2.Tag := Integer(lblBody2);
  edBody3.Tag := Integer(lblBody3);
  edBody4.Tag := Integer(lblBody4);

  edBordersType.Tag := Integer(lblBordersType);
  edBorders1.Tag := Integer(lblBorders1);
  edBorders2.Tag := Integer(lblBorders2);
  edBorders3.Tag := Integer(lblBorders3);
  edBorders4.Tag := Integer(lblBorders4);

  edText1.Tag := Integer(lblText1);

  edBodyType.AutoDropDownWidth := True;
  edBordersType.AutoDropDownWidth := True;
end;

procedure TForm1.InitCategoryButtons;
var
  C: TSpTBXSkinComponentsType;
  S: TSpTBXSkinStatesType;
  L: TStringList;
  I: Integer;
  LightBtnFace, DarkBtnFace: TColor;
  Category: TButtonCategory;
  Button: TButtonItem;
begin
  // Fill category/buttons
  if CategoryButtons1.Categories.Count = 0 then begin
    LightBtnFace := SpLighten(clBtnFace, 25);
    DarkBtnFace := SpLighten(clBtnFace, -25);
    L := TStringList.Create;
    try
      for C := Low(C) to High(C) do
        L.AddObject(CSpTBXSkinComponents[C].Name, Pointer(C));
      L.Sort;

      for I := 0 to L.Count - 1 do begin
        C := TSpTBXSkinComponentsType(L.Objects[I]);
        Category := CategoryButtons1.Categories.Add;
        Category.Caption := CSpTBXSkinComponents[C].Name;
        Category.Data := Pointer(C);
        Category.Color := DarkBtnFace;
        Category.GradientColor := LightBtnFace;
        Category.Collapsed := True;

        for S := Low(S) to High(S) do
          if S in CSpTBXSkinComponents[C].States then begin
            Button := Category.Items.Add;
            Button.Caption := SSpTBXSkinDisplayStatesString[S];
            Button.Data := Pointer(S);
          end;
      end;
    finally
      L.Free;
    end;
  end;

  // Select the first item
  CategoryButtons1.Categories.Items[0].Collapsed := False;
  CategoryButtons1.SelectedItem := nil;
  CategoryButtons1.SelectedItem := CategoryButtons1.Categories[0].Items[0];
  CategoryButtons1.Invalidate;
end;

procedure TForm1.InvalidatePreview;
begin
  SkinManager.BroadcastSkinNotification;
end;

procedure TForm1.UpdateInspector;
// Loads the skin data into the edit boxes
var
  Op: TSpTBXSkinOptionCategory;
begin
  FLoadingInspector := True;
  try
    Op := FSelectedElement;

    // Get the general properties
    edSkinName.Text := CurrentSkin.SkinName;
    edSkinAuthor.Text := CurrentSkin.SkinAuthor;
    edSkinOfficeIcons.ItemIndex := Integer(CurrentSkin.OfficeIcons);
    edSkinOfficeMenu.ItemIndex := Integer(CurrentSkin.OfficeMenu);
    edSkinOfficeStatusbar.ItemIndex := Integer(CurrentSkin.OfficeStatusBar);

    // Get the Body/Border/Text colors and enable the edit controls
    edBodyType.ItemIndex := Op.Body.SkinType;
    edBody1.SelectedColor := Op.Body.Color1;
    edBody2.SelectedColor := Op.Body.Color2;
    edBody3.SelectedColor := Op.Body.Color3;
    edBody4.SelectedColor := Op.Body.Color4;
    edBordersType.ItemIndex := Op.Borders.SkinType;
    edBorders1.SelectedColor := Op.Borders.Color1;
    edBorders2.SelectedColor := Op.Borders.Color2;
    edBorders3.SelectedColor := Op.Borders.Color3;
    edBorders4.SelectedColor := Op.Borders.Color4;
    edText1.SelectedColor := Op.TextColor;

    // Invalidate the selected Category Button
    CategoryButtons1.UpdateButton(CategoryButtons1.SelectedItem);
  finally
    FLoadingInspector := False;
  end;
end;

procedure TForm1.UpdateSkin;
var
  I: Integer;
  Op: TSpTBXSkinOptionCategory;
begin
  if FLoadingInspector then Exit;

  Op := FSelectedElement;

  // Save the general properties
  CurrentSkin.SkinName := edSkinName.Text;
  CurrentSkin.SkinAuthor := edSkinAuthor.Text;
  CurrentSkin.OfficeIcons := Boolean(edSkinOfficeIcons.ItemIndex);
  CurrentSkin.OfficeMenu := Boolean(edSkinOfficeMenu.ItemIndex);
  CurrentSkin.OfficeStatusBar := Boolean(edSkinOfficeStatusbar.ItemIndex);

  // Save the SkinType/BorderType
  I := edBodyType.ItemIndex;
  if I > -1 then Op.Body.SkinType := I;
  I := edBordersType.ItemIndex;
  if I > -1 then Op.Borders.SkinType := I;

  // Save the Body/Borders/Text colors
  Op.Body.Color1 := edBody1.SelectedColor;
  Op.Body.Color2 := edBody2.SelectedColor;
  Op.Body.Color3 := edBody3.SelectedColor;
  Op.Body.Color4 := edBody4.SelectedColor;
  Op.Borders.Color1 := edBorders1.SelectedColor;
  Op.Borders.Color2 := edBorders2.SelectedColor;
  Op.Borders.Color3 := edBorders3.SelectedColor;
  Op.Borders.Color4 := edBorders4.SelectedColor;
  Op.TextColor := edText1.SelectedColor;

  // Invalidate preview
  CategoryButtons1.UpdateButton(CategoryButtons1.SelectedItem);
  InvalidatePreview;
  FSkinModified := True;
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Menu }

procedure TForm1.aExitExecute(Sender: TObject);
begin
  Close;
end;

procedure TForm1.aHelpExecute(Sender: TObject);
begin
  SpUIExecuteLink('http://www.silverpointdevelopment.com/skineditor/index.htm');
end;

procedure TForm1.aNewExecute(Sender: TObject);
var
  F: TNewSkinForm;
begin
  if CanOpenNewFile then begin
    F := TNewSkinForm.Create(Self);
    try
      if F.ShowModal = mrOk then begin
        FSkinFilePath := '';
        Caption := rvSkinEditorEmptyCaption;
        FSkinModified := False;
        InitCategoryButtons;
        InvalidatePreview;
      end;
    finally
      F.Release;
    end;
  end;
end;

procedure TForm1.aOpenExecute(Sender: TObject);
begin
  if CanOpenNewFile and OpenDialog1.Execute then begin
    CurrentSkin.LoadFromFile(OpenDialog1.FileName);
    FSkinFilePath := OpenDialog1.FileName;
    Caption := ExtractFileName(FSkinFilePath) + ' - ' + rvSkinEditorCaption;
    InitCategoryButtons;
    InvalidatePreview;
  end;
end;

procedure TForm1.aSaveExecute(Sender: TObject);
begin
  SaveFile;
end;

procedure TForm1.aSaveAsExecute(Sender: TObject);
begin
  SaveFile(True);
end;

procedure TForm1.aAboutExecute(Sender: TObject);
var
  F: TAboutForm;
begin
  F := TAboutForm.Create(Self);
  try
    F.lblVersion.Caption := rvSkinEditorVersion;
    F.lblCopyright.Caption := rvSkinEditorCopyright;
    F.ShowModal;
  finally
    F.Release;
  end;
end;

procedure TForm1.aCheckUpdatesExecute(Sender: TObject);
begin
  SpUIExecuteLink('http://www.silverpointdevelopment.com/skineditor/index.htm#downloads');
end;

procedure TForm1.aCopyExecute(Sender: TObject);
begin
  ClipBoardSkinOption.Assign(FSelectedElement);
end;

procedure TForm1.aPasteExecute(Sender: TObject);
begin
  FSelectedElement.Assign(ClipBoardSkinOption);
  UpdateInspector;
  InvalidatePreview;
end;

procedure TForm1.aPasteBodyExecute(Sender: TObject);
begin
  FSelectedElement.Body.Assign(ClipBoardSkinOption.Body);
  UpdateInspector;
  InvalidatePreview;
end;

procedure TForm1.aPasteBordersExecute(Sender: TObject);
begin
  FSelectedElement.Borders.Assign(ClipBoardSkinOption.Borders);
  UpdateInspector;
  InvalidatePreview;
end;

procedure TForm1.aPasteTextExecute(Sender: TObject);
begin
  FSelectedElement.TextColor := ClipBoardSkinOption.TextColor;
  UpdateInspector;
  InvalidatePreview;
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Preview Panel }

procedure TForm1.pnlPreviewAlignPosition(Sender: TWinControl; Control: TControl;
  var NewLeft, NewTop, NewWidth, NewHeight: Integer; var AlignRect: TRect;
  AlignInfo: TAlignInfo);
begin
  // Center the TitleBar on the preview panel
  if Control = FPreviewFrame then begin
    NewLeft := (AlignRect.Right + AlignRect.Left - NewWidth) div 2;
    NewTop := (AlignRect.Bottom + AlignRect.Top - NewHeight) div 2;
  end;
end;

procedure TForm1.edSplittersMoved(Sender: TObject);
begin
  if Sender = edSplitter1 then
    pnlPropertiesEdLeft.Width := pnlGeneralEdLeft.Width
  else
    if Sender = edSplitter2 then
      pnlGeneralEdLeft.Width := pnlPropertiesEdLeft.Width;
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Elements Panel }

procedure TForm1.CategoryButtons1SelectedItemChange(Sender: TObject;
  const Button: TButtonItem);
begin
  if Assigned(Button) then begin
    FSelectedElement := CurrentSkin.Options(TSpTBXSkinComponentsType(Button.Category.Data), TSpTBXSkinStatesType(Button.Data));
    UpdateInspector;
  end;
end;

procedure TForm1.CategoryButtons1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
var
  B: TButtonItem;
begin
  // If the right-click was on a Button try to select it
  B := CategoryButtons1.GetButtonAt(MousePos.X, MousePos.Y);
  if Assigned(B) then
    CategoryButtons1.SelectedItem := B
  else
    Handled := True;  // Don't show the PopupMenu
end;

procedure TForm1.CategoryButtons1DrawButton(Sender: TObject;
  const Button: TButtonItem; Canvas: TCanvas; Rect: TRect;
  State: TButtonDrawState);
var
  C: TSpTBXSkinComponentsType;
  S: TSpTBXSkinStatesType;
begin
  if Assigned(Button) then begin
    C := TSpTBXSkinComponentsType(Button.Category.Data);
    S := TSpTBXSkinStatesType(Button.Data);
    SpUIDrawSkinState(Canvas, Rect, bdsSelected in State, CurrentSkin, C, S, CategoryButtons1.Color, CurrentPPI);
  end;
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Inspector Panel }

procedure TForm1.edChanged(Sender: TObject);
// Shared by all the property editors
begin
  UpdateSkin;
end;

procedure TForm1.edEnter(Sender: TObject);
// Shared by all the property editors
var
  W: TWinControl;
begin
  // Change the background color of the Edit and the Label controls
  W := Sender as TWinControl;
  if not (W is TSpTBXComboBox) then
    TWinControlAccess(W).Color := $E7E7E7;
  TWinControlAccess(W.Tag).Color := $E7E7E7;
end;

procedure TForm1.edExit(Sender: TObject);
// Shared by all the property editors
var
  W: TWinControl;
begin
  // Change the background color of the Edit and the Label controls
  W := Sender as TWinControl;
  TWinControlAccess(W).Color := clWindow;
  TWinControlAccess(W.Tag).Color := clWindow;

  // Shared by the SkinName and Author TEdit property editors
  if W is TEdit then begin
    CurrentSkin.SkinName := edSkinName.Text;
    CurrentSkin.SkinAuthor := edSkinAuthor.Text;
  end;
end;

procedure TForm1.edKeyPress(Sender: TObject; var Key: Char);
// Shared by the SkinName and Author TEdit property editors
begin
  if Key = #13 then begin
    Key := #0;
    CurrentSkin.SkinName := edSkinName.Text;
    CurrentSkin.SkinAuthor := edSkinAuthor.Text;
  end;
end;

procedure TForm1.edlblClick(Sender: TObject);
// Shared by all the property labels
var
  L: TSpTBXLabel;
begin
  L := Sender as TSpTBXLabel;
  if Assigned(L.FocusControl) and (L.FocusControl.CanFocus) then
    L.FocusControl.SetFocus;
end;

procedure TForm1.edlblPropertiesDraw(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; const PaintStage: TSpTBXPaintStage; var PaintDefault: Boolean);
// Shared by all the property labels titles
begin
  if PaintStage = pstPrePaint then begin
    PaintDefault := False;
    SpGradientFillMirror(ACanvas, ARect, $BEA77F, $9E7C3F, $734A03, $A28842, True);
    SpDrawRectangle(ACanvas, ARect, 0, $9D744A, $402701, $CCBA9E, $BBA76A);
  end;
end;

procedure TForm1.edTypeDrawBackground(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; const PaintStage: TSpTBXPaintStage; var PaintDefault: Boolean);
// Shared by the property comboboxes
var
  C: TSpTBXComboBox;
begin
  if PaintStage = pstPrePaint then
    PaintDefault := False;
  if PaintStage = pstPostPaint then begin
    C := Sender as TSpTBXComboBox;
    if not C.Focused then begin
      PaintDefault := False;
      ACanvas.Brush.Color := C.Color;
      ACanvas.FillRect(ARect);
    end;
  end;
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Form }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Caption := rvSkinEditorEmptyCaption;

  FPreviewFrame := TPreviewFrame.Create(Self);
  FPreviewFrame.Parent := pnlPreview;
  FPreviewFrame.Align := alCustom;

  SkinManager.SetSkin('EditorSkin');
  CurrentSkin.SkinName := '';
  CurrentSkin.SkinAuthor := '';
  InitForm;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FPreviewFrame);
end;

end.
