object NewSkinForm: TNewSkinForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Skin'
  ClientHeight = 192
  ClientWidth = 330
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 53
    Height = 13
    Caption = 'Skin Name:'
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 59
    Height = 13
    Caption = 'Skin Author:'
  end
  object Button1: TButton
    Left = 160
    Top = 160
    Width = 75
    Height = 25
    Caption = 'OK'
    ModalResult = 1
    TabOrder = 4
  end
  object Button2: TButton
    Left = 248
    Top = 160
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 80
    Top = 14
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 80
    Top = 46
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 88
    Width = 313
    Height = 49
    TabOrder = 3
    object ComboBox1: TComboBox
      Left = 8
      Top = 16
      Width = 297
      Height = 21
      Style = csDropDownList
      Enabled = False
      ItemIndex = 0
      TabOrder = 0
      Text = 'Athen'
      Items.Strings = (
        'Athen'
        'Dream'
        'Eos'
        'Human'
        'Leopard'
        'Office 2003'
        'Office 2007 Blue'
        'Office 2007 Black'
        'Office 2007 Silver'
        'Office XP'
        'Xito')
    end
  end
  object CheckBox1: TCheckBox
    Left = 18
    Top = 80
    Width = 111
    Height = 17
    Caption = 'Use Skin Template'
    TabOrder = 2
    OnClick = CheckBox1Click
  end
end
