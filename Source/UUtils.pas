unit UUtils;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, StdCtrls, SpTBXSkins, SpTBXItem, SpTBXEditors,
  SpTBXExtEditors;

type
  { TSpTBXEditorSkin }
  TSpTBXEditorSkin = class(TSpTBXSkinOptions)
  public
    procedure FillOptions; override;
  end;

{ Helpers }
function ClipBoardSkinOption: TSpTBXSkinOptionCategory;
procedure SpUIDrawSkinState(ACanvas: TCanvas; ARect: TRect; Selected: Boolean;
  ASkin: TSpTBXSkinOptions; C: TSpTBXSkinComponentsType; S: TSpTBXSkinStatesType;
  BackgroundColor: TColor; DPI: Integer);
procedure SpUIExecuteLink(LinkText: WideString);

implementation

uses
  ShellAPI;

var
  FInternalClipboardSkinOption: TSpTBXSkinOptionCategory = nil;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Helpers }

function ClipBoardSkinOption: TSpTBXSkinOptionCategory;
begin
  if not Assigned(FInternalClipboardSkinOption) then
    FInternalClipboardSkinOption := TSpTBXSkinOptionCategory.Create;
  Result := FInternalClipboardSkinOption;
end;

procedure SpUIDrawSkinState(ACanvas: TCanvas; ARect: TRect; Selected: Boolean;
  ASkin: TSpTBXSkinOptions; C: TSpTBXSkinComponentsType; S: TSpTBXSkinStatesType;
  BackgroundColor: TColor; DPI: Integer);
var
  B: TBitmap;
  R, RBackG: TRect;
  I: Integer;
  CanDrawText: Boolean;
  TextFlags: Cardinal;
  CheckboxState: TCheckBoxState;
begin
  B := TBitmap.Create;
  try
    B.Width := ARect.Right - ARect.Left;
    B.Height := ARect.Bottom - ARect.Top;
    R := Rect(0, 0, B.Width, B.Height);

    // Draw background
    RBackG := R;
    B.Canvas.Brush.Color := BackgroundColor;
    B.Canvas.FillRect(RBackG);
    if Selected then begin
      InflateRect(RBackG, -1, -1);
      B.Canvas.Brush.Color := clHighlight;
      B.Canvas.FrameRect(RBackG);

      InflateRect(RBackG, -1, -1);
      B.Canvas.Brush.Color := clHighlightText;
      B.Canvas.FrameRect(RBackG);
    end;

    // Draw Skin element
    InflateRect(R, -6, -6);
    CanDrawText := True;
    TextFlags := DT_SINGLELINE or DT_CENTER or DT_VCENTER;
    if ASkin.Options(C, S).IsEmpty then begin
      SpDrawCheckeredBackground(B.Canvas, R);
    end
    else begin
      case C of
        skncCheckBox, skncRadioButton:
          begin
            R.Right := R.Left + 13;
            R := SpCenterRectVert(R, 13);
            if C = skncCheckBox then begin
              if S in [sknsChecked, sknsCheckedAndHotTrack] then CheckboxState := cbChecked
              else CheckboxState := cbUnchecked;
              SpDrawXPCheckBoxGlyph(nil, B.Canvas, R, S <> sknsDisabled, CheckboxState, S in [sknsHotTrack, sknsCheckedAndHotTrack], S = sknsPushed, DPI);
            end
            else
              SpDrawXPRadioButtonGlyph(nil, B.Canvas, R, S <> sknsDisabled, S in [sknsChecked, sknsCheckedAndHotTrack], S in [sknsHotTrack, sknsCheckedAndHotTrack], S = sknsPushed, DPI);
            R.Left := R.Right + 4;
            R.Right := B.Width;
            TextFlags := TextFlags and not DT_CENTER;
          end;
        skncStatusBarGrip:
          begin
            CanDrawText := False;
            I := GetSystemMetrics(SM_CXVSCROLL) + 2;
            R := SpCenterRect(R, I, I);
            SpDrawXPStatusBar(nil, B.Canvas, Rect(0, 0, 0, 0), R, DPI);
          end;
        skncSeparator:
          begin
            CanDrawText := False;
            SpDrawXPMenuSeparator(nil, B.Canvas, R, False, True, DPI);
          end;
        skncToolbarGrip:
          begin
            CanDrawText := False;
            R.Left := (R.Right + R.Left - 4) div 2;
            R.Right := R.Left + 4;
            with ASkin.Options(skncToolbarGrip).Body do
              SpDrawXPGrip(B.Canvas, R, Color1, Color2, DPI);
          end;
        skncWindow:
          begin
            CanDrawText := False;
            ASkin.PaintWindowFrame(B.Canvas, R, True, True);
          end;
      else
        ASkin.PaintBackground(B.Canvas, R, C, S, True, True);
      end;
    end;

    // Draw text
    if CanDrawText then begin
      B.Canvas.Font.Color := ASkin.GetTextColor(nil, C, S);
      SpDrawXPText(B.Canvas, SSpTBXSkinDisplayStatesString[S], R, TextFlags);
    end;

    ACanvas.Draw(ARect.Left, ARect.Top, B);
  finally
    B.Free;
  end;
end;

procedure SpUIExecuteLink(LinkText: WideString);
begin
  if LinkText <> '' then
    if Win32Platform = VER_PLATFORM_WIN32_WINDOWS then
      ShellExecuteA(Application.Handle, 'open', PAnsiChar(AnsiString(LinkText)), nil, '', SW_SHOWNORMAL)
    else
      ShellExecuteW(Application.Handle, 'open', PWideChar(LinkText), nil, '', SW_SHOWNORMAL);
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ TSpTBXEditorSkin }

procedure TSpTBXEditorSkin.FillOptions;
begin
  SkinName := 'EditorSkin';

  //---- Single State ----//
  Options(skncDock, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncDockablePanel, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncDockablePanelTitleBar, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncPanel, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncPopup, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncStatusBar, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncSplitter, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  Options(skncToolbar, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  CopyOptions(skncToolbar, skncMenuBar);

  Options(skncWindow, sknsNormal).Borders.Fill(0, $808080, $808080, $C0C0C0, $DDD9D2);

  Options(skncWindowTitleBar, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);

  //---- Elements ----//
  Options(skncToolbarGrip, sknsNormal).Body.Fill(0, clBtnFace, clWhite, clNone, clNone);

  Options(skncStatusBarGrip, sknsNormal).Body.Fill(0, clBtnFace, clWhite, clNone, clNone);

  Options(skncSeparator, sknsNormal).Body.Fill(0, $869999, clNone, clNone, clNone);

  //---- Buttons ----//

  //---- Editors ----//
  Options(skncEditFrame, sknsNormal).Borders.Fill(1, clNone, clNone, $D0D0D0, $D0D0D0);
  Options(skncEditFrame, sknsDisabled).Borders.Fill(1, clNone, clNone, $99A8AC, $99A8AC);
  Options(skncEditFrame, sknsHotTrack).Borders.Fill(1, clNone, clNone, $94A0A0, $94A0A0);

//  CopyOptions(skncToolbarItem, skncEditButton);
//  Options(skncEditButton, sknsNormal).TextColor := clBlack;

  //---- Tabs ----//

  Options(skncTab, sknsChecked).Body.Fill(0, clBtnFace, clNone, clNone, clNone);
  Options(skncTab, sknsChecked).Borders.Fill(0, clBtnShadow, clBtnShadow, clNone, clNone);
  Options(skncTab, sknsHotTrack).Body.Fill(0, clBtnFace, clNone, clNone, clNone);
  Options(skncTab, sknsHotTrack).Borders.Fill(0, clBtnShadow, clBtnShadow, clNone, clNone);
  Options(skncTab, sknsCheckedAndHotTrack).Body.Fill(0, clBtnFace, clNone, clNone, clNone);
  Options(skncTab, sknsCheckedAndHotTrack).Borders.Fill(0, clBtnShadow, clBtnShadow, clNone, clNone);

  // TabBackground: Only Normal state is used
  Options(skncTabBackground, sknsNormal).Body.Fill(0, clBtnFace, clNone, clNone, clNone);
  Options(skncTabBackground, sknsNormal).Borders.Fill(0, clBtnShadow, clBtnShadow, clNone, clNone);

  //---- ProgressBar ----//
  // ProgressBar: Only Normal and HotTrack states are used
  // HotTrack represents the selection
//  Options(skncProgressBar, sknsNormal).Body.Fill(0, $809090, clNone, clNone, clNone);
//  Options(skncProgressBar, sknsNormal).Borders.Fill(0, $5A6666, $5A6666, clNone, clNone);
//  Options(skncProgressBar, sknsHotTrack).Body.Fill(0, $94A0A0, clNone, clNone, clNone);
//  Options(skncProgressBar, sknsHotTrack).Borders.Fill(1, $5A6666, $5A6666, clNone, clNone);

  //---- TrackBar ----//
  // TrackBar: Only Normal and HotTrack states are used
  // HotTrack represents the selection
  CopyOptions(skncProgressBar, skncTrackBar);

  // TrackBarButton: Only Normal and Pushed states are used

  //---- Header ----//
end;

//WMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWMWM
{ Stock Objects }

procedure InitializeStock;
begin
  if not Assigned(FInternalClipboardSkinOption) then
    FInternalClipboardSkinOption := TSpTBXSkinOptionCategory.Create;
end;

procedure FinalizeStock;
begin
  FreeAndNil(FInternalClipboardSkinOption);
end;

initialization
  SkinManager.AddSkin('EditorSkin', TSpTBXEditorSkin);
  InitializeStock;

finalization
  FinalizeStock;

end.
