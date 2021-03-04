unit frmNewSkin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SpTBXSkins;

type
  TNewSkinForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    ComboBox1: TComboBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    procedure UpdateCurrentSkin;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TNewSkinForm.CheckBox1Click(Sender: TObject);
begin
  ComboBox1.Enabled := CheckBox1.Checked;
end;

procedure TNewSkinForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrOk then
    UpdateCurrentSkin;
end;

procedure TNewSkinForm.UpdateCurrentSkin;
var
  Op: TSpTBXSkinOptions;
  L: TSpTBXSkinsListEntry;
begin
  if CheckBox1.Checked and (ComboBox1.ItemIndex > -1) then begin
    // Load the template
    if SkinManager.SkinsList.TryGetValue(ComboBox1.Text, L) then begin
      // Don't use SkinManager.SetSkin, make sure we use the TSpTBXEditorSkin
      // skin class, assign the options instead of freeing the CurrentSkin.
      if Assigned(L.SkinClass) then begin
        Op := L.SkinClass.Create;
        try
          Op.SkinName := Edit1.Text;
          Op.SkinAuthor := Edit2.Text;
          CurrentSkin.Assign(Op);
        finally
          Op.Free;
        end;
      end;
    end;
  end
  else begin
    // Create a new skin
    CurrentSkin.Reset(True);
    CurrentSkin.FillOptions;
    CurrentSkin.SkinName := Edit1.Text;
    CurrentSkin.SkinAuthor := Edit2.Text;
  end;
end;

end.
