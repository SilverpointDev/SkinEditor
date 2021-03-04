object PreviewFrame: TPreviewFrame
  Left = 0
  Top = 0
  Width = 380
  Height = 408
  TabOrder = 0
  object SpTBXTitleBar1: TSpTBXTitleBar
    Left = 15
    Top = 13
    Width = 354
    Height = 384
    Caption = 'SpTBXTitleBar1'
    Align = alCustom
    object SpTBXTabControl1: TSpTBXTabControl
      Left = 6
      Top = 79
      Width = 342
      Height = 274
      Align = alClient
      ActiveTabIndex = 0
      ExplicitHeight = 276
      HiddenItems = <>
      object SpTBXTabItem1: TSpTBXTabItem
        Caption = 'Controls'
        Checked = True
      end
      object SpTBXTabItem2: TSpTBXTabItem
        Caption = 'Panels'
      end
      object SpTBXTabSheet2: TSpTBXTabSheet
        Left = 0
        Top = 25
        Width = 342
        Height = 249
        Caption = 'Panels'
        ImageIndex = -1
        ExplicitHeight = 251
        TabItem = 'SpTBXTabItem2'
        object SpTBXMultiDock1: TSpTBXMultiDock
          Left = 2
          Top = 169
          Width = 336
          Height = 76
          Position = dpxBottom
          ExplicitTop = 171
          object SpTBXDockablePanel1: TSpTBXDockablePanel
            Left = 0
            Top = 0
            Width = 336
            Height = 76
            Caption = 'Dockable Panel'
            DockMode = dmCannotFloatOrChangeDocks
            DockPos = 0
            TabOrder = 0
            OnCloseQuery = SpTBXDockablePanel1CloseQuery
          end
        end
        object SpTBXSplitter1: TSpTBXSplitter
          Left = 2
          Top = 164
          Width = 336
          Height = 5
          Cursor = crSizeNS
          Align = alBottom
          ParentColor = False
          ExplicitTop = 166
        end
        object SpTBXPanel1: TSpTBXPanel
          Left = 2
          Top = 0
          Width = 336
          Height = 164
          Caption = 'SpTBXPanel1'
          Align = alClient
          TabOrder = 2
          Borders = False
          ExplicitHeight = 166
          object SpTBXGroupBox4: TSpTBXGroupBox
            Left = 16
            Top = 8
            Width = 305
            Height = 65
            Caption = 'GroupBox'
            TabOrder = 0
          end
          object SpTBXGroupBox5: TSpTBXGroupBox
            Left = 16
            Top = 80
            Width = 145
            Height = 81
            Caption = 'Panel'
            TabOrder = 1
          end
          object SpTBXGroupBox6: TSpTBXGroupBox
            Left = 176
            Top = 80
            Width = 145
            Height = 81
            Caption = 'Panel with background'
            TabOrder = 2
            TBXStyleBackground = True
          end
        end
      end
      object SpTBXTabSheet1: TSpTBXTabSheet
        Left = 0
        Top = 25
        Width = 342
        Height = 249
        Caption = 'Controls'
        ImageIndex = -1
        ExplicitHeight = 251
        TabItem = 'SpTBXTabItem1'
        object SpTBXGroupBox1: TSpTBXGroupBox
          Left = 6
          Top = 5
          Width = 333
          Height = 112
          Caption = 'Buttons'
          TabOrder = 0
          Borders = False
          object SpTBXButton1: TSpTBXButton
            Left = 10
            Top = 18
            Width = 75
            Height = 25
            Caption = 'Normal'
            TabOrder = 0
          end
          object SpTBXButton2: TSpTBXButton
            Left = 10
            Top = 50
            Width = 75
            Height = 25
            Caption = 'Checked'
            TabOrder = 1
            Checked = True
          end
          object SpTBXButton3: TSpTBXButton
            Left = 10
            Top = 82
            Width = 75
            Height = 25
            Caption = 'Disabled'
            Enabled = False
            TabOrder = 2
          end
          object SpTBXCheckBox1: TSpTBXCheckBox
            Left = 130
            Top = 21
            Width = 61
            Height = 25
            Caption = 'Normal'
            TabOrder = 3
            OnClick = SpTBXCheckBox1Click
          end
          object SpTBXCheckBox2: TSpTBXCheckBox
            Left = 130
            Top = 53
            Width = 69
            Height = 25
            Caption = 'Checked'
            TabOrder = 4
            OnClick = SpTBXCheckBox1Click
            Checked = True
            State = cbChecked
          end
          object SpTBXCheckBox3: TSpTBXCheckBox
            Left = 130
            Top = 85
            Width = 68
            Height = 25
            Caption = 'Disabled'
            Enabled = False
            TabOrder = 5
          end
          object SpTBXRadioButton1: TSpTBXRadioButton
            Left = 234
            Top = 21
            Width = 61
            Height = 25
            Caption = 'Normal'
            TabOrder = 6
            OnClick = SpTBXRadioButton1Click
          end
          object SpTBXRadioButton2: TSpTBXRadioButton
            Left = 234
            Top = 53
            Width = 69
            Height = 25
            Caption = 'Checked'
            TabOrder = 7
            TabStop = True
            OnClick = SpTBXRadioButton1Click
            Checked = True
          end
          object SpTBXRadioButton3: TSpTBXRadioButton
            Left = 234
            Top = 85
            Width = 68
            Height = 25
            Caption = 'Disabled'
            Enabled = False
            TabOrder = 8
          end
        end
        object SpTBXGroupBox2: TSpTBXGroupBox
          Left = 6
          Top = 119
          Width = 170
          Height = 133
          Caption = 'Editors'
          TabOrder = 1
          Borders = False
          object SpTBXEdit1: TSpTBXEdit
            Left = 10
            Top = 17
            Width = 153
            Height = 21
            ReadOnly = True
            TabOrder = 0
            Text = 'Edit'
          end
          object SpTBXComboBox1: TSpTBXComboBox
            Left = 10
            Top = 45
            Width = 153
            Height = 21
            Style = csDropDownList
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 1
            Text = 'ComboBox'
            Items.Strings = (
              'ComboBox')
            AutoDropDownWidth = True
          end
          object SpTBXPanel2: TSpTBXPanel
            Left = 10
            Top = 73
            Width = 153
            Height = 57
            TabOrder = 2
            HotTrack = True
            object Panel5: TPanel
              Left = 2
              Top = 2
              Width = 149
              Height = 17
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 0
              object SpTBXSpeedButton1: TSpTBXSpeedButton
                Left = 0
                Top = 0
                Width = 73
                Height = 17
                Caption = 'Column 1'
                Align = alLeft
                OnDraw = SpTBXSpeedButton1Draw
                OnDrawCaption = SpTBXSpeedButton1DrawCaption
              end
              object SpTBXSpeedButton2: TSpTBXSpeedButton
                Left = 73
                Top = 0
                Width = 76
                Height = 17
                Caption = 'Column 2'
                Align = alClient
                OnDraw = SpTBXSpeedButton1Draw
                OnDrawCaption = SpTBXSpeedButton1DrawCaption
              end
            end
            object SpTBXListBox1: TSpTBXListBox
              Left = 2
              Top = 19
              Width = 149
              Height = 36
              Align = alClient
              BorderStyle = bsNone
              Items.Strings = (
                'List Item 1'
                'List Item 2')
              TabOrder = 1
            end
          end
        end
        object SpTBXGroupBox3: TSpTBXGroupBox
          Left = 188
          Top = 119
          Width = 150
          Height = 133
          Caption = 'Misc controls'
          TabOrder = 2
          Borders = False
          object SpTBXProgressBar1: TSpTBXProgressBar
            Left = 12
            Top = 71
            Width = 130
            Height = 17
            Caption = '30%'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Position = 30
          end
          object SpTBXTrackBar1: TSpTBXTrackBar
            Left = 5
            Top = 21
            Width = 143
            Height = 33
            Position = 3
            TabOrder = 1
          end
        end
      end
    end
    object SpTBXDock1: TSpTBXDock
      Left = 6
      Top = 28
      Width = 342
      Height = 51
      object SpTBXToolbar1: TSpTBXToolbar
        Left = 0
        Top = 0
        CloseButton = False
        DockMode = dmCannotFloatOrChangeDocks
        FullSize = True
        Images = ImageList1
        ProcessShortCuts = True
        ShrinkMode = tbsmWrap
        TabOrder = 0
        Caption = 'SpTBXToolbar1'
        Customizable = False
        MenuBar = True
        object SpTBXSubmenuItem1: TSpTBXSubmenuItem
          Caption = 'MenuBar Item'
          object TBGroupItem1: TTBGroupItem
            object SpTBXItem1: TSpTBXItem
              Caption = 'Item'
              ImageIndex = 0
            end
            object SpTBXItem3: TSpTBXItem
              Caption = 'Checked Item'
              Checked = True
              GroupIndex = 1
            end
            object SpTBXItem4: TSpTBXItem
              Caption = 'Radio Item'
              Checked = True
              GroupIndex = 2
              RadioItem = True
            end
          end
          object SpTBXItemMenuSeparator1: TSpTBXSeparatorItem
          end
          object SpTBXItemMenu1: TSpTBXItem
            Caption = 'Disabled Item'
            Enabled = False
            ImageIndex = 0
          end
          object SpTBXItemMenu2: TSpTBXItem
            Caption = 'Disabled Checked Item'
            Checked = True
            Enabled = False
            GroupIndex = 3
          end
          object SpTBXItemMenu3: TSpTBXItem
            Caption = 'Disabled Radio Item'
            Checked = True
            Enabled = False
            GroupIndex = 4
            RadioItem = True
          end
        end
      end
      object SpTBXToolbar2: TSpTBXToolbar
        Left = 0
        Top = 25
        DockMode = dmCannotFloatOrChangeDocks
        Images = ImageList1
        TabOrder = 1
        Caption = 'SpTBXToolbar2'
        object SpTBXItemToolbar1: TSpTBXItem
          Caption = 'Toolbar Item'
          DisplayMode = nbdmImageAndText
          ImageIndex = 0
        end
        object SpTBXItemToolbarSeparator1: TSpTBXSeparatorItem
        end
        object SpTBXItemToolbar2: TSpTBXItem
          Caption = 'Disabled Item'
          DisplayMode = nbdmImageAndText
          Enabled = False
          ImageIndex = 0
        end
      end
    end
    object SpTBXStatusBar2: TSpTBXStatusBar
      Left = 6
      Top = 353
      Width = 342
      Height = 25
      Enabled = False
      ExplicitTop = 355
      object SpTBXItem9: TSpTBXItem
        Caption = 'Status Panel'
      end
      object SpTBXSeparatorItem4: TSpTBXSeparatorItem
      end
      object SpTBXItem10: TSpTBXItem
        Caption = 'Disabled Status Panel'
        Enabled = False
      end
    end
  end
  object SpTBXPopupMenu1: TSpTBXPopupMenu
    Images = ImageList1
    LinkSubitems = TBGroupItem1
    Left = 264
    Top = 328
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 296
    Top = 328
  end
  object ImageList1: TImageList
    Left = 328
    Top = 328
    Bitmap = {
      494C010101000500040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008F8E8D009D9C9B009D9C9B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00009D9C9B00BDBCBC00EBEBEB00D2D2D1009D9C9B009D9C9B009D9C9B000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009D9C
      9B00C4C4C400FFFFFF00FAFAFA00EDEDED00F2EDEA0072B17200148314003483
      340080907F009D9C9B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009D9C9B00D1D0
      D000FFFFFF00FFFFFF00FBFBFB00F0F0F000F7F1EE0075B47500048204000482
      04009DBC9D00C7C3C1009D9C9B00797978000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9C9B00E0E0E000FFFF
      FF00FFFFFF00FFFFFF00FDFDFD00F6F6F600FDF7F40078B77800048204000482
      0400A1C1A100DBD8D600C3C3C300777776000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9C9B00FDFDFD00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FCFCFC00FFFEFB007BBA7B00048204000482
      0400A6C5A600DEDBDA00C4C4C300777776000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9C9B00FFFEFF00FFFF
      FF00B2C6B1007FA17F00D2DDD200FFFFFF00FFFFFF007EBD7E00048204000482
      0400ABCAAB00E5E2E100C8C9C8007B787A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9C9B00EBEEEA006790
      65000B711200006B050016601500CBD9CB00FFFFFF00DDEDDD007EBD7E004EA5
      4E00BED5BE00E9E7E600D8D2D8004F674F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D9C9B00256A25001792
      280043DE660037CD5300037307001A5F1900CCD9CD00FFFFFF00FFFFFF00F9F8
      F700EEEFEE00F2F0F200D0D0D000245824000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000217729003BCA5D0054EE
      7E0047DF6A003DD75C002DC2450005710900175E1600CBD8CB00FFFFFF00FDFD
      FD00FFFFFF00C5D0C5002F6D2F00005800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E7E140065FF970050E8
      790046DE69003CD45A0034CE4E0025BA3700006E02001B5F1A00CEDBCE00FFFF
      FF0099B499000B560B00005C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000E7E14004AD96E0053ED
      7E0046DE69003CD45A0032CB4C0028C23C001DB12B00006E0300206520005B87
      5B00005100000063000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000E7E140047DB
      6C0048E26D003CD45A0033CB4C0037CE530053ED7C0013A91C00007000000053
      0000006500000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000E7E
      14003FD25E003ED85C0036CF510053ED7C0053ED7C000BA21000057E08000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000E7E140035C8500035CE4F000E7E14000B971000068708000E7E14000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000E7E14000E7E140000000000035E04000E7E1400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00F8FF000000000000F01F000000000000
      E003000000000000C00000000000000080000000000000008000000000000000
      8000000000000000800000000000000080000000000000008000000000000000
      80010000000000008003000000000000C007000000000000E01F000000000000
      F01F000000000000F93F00000000000000000000000000000000000000000000
      000000000000}
  end
end
