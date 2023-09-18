object Form1: TForm1
  Left = 0
  Top = 0
  ClientHeight = 605
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object pnlMenu: TPanel
    Left = 0
    Top = 32
    Width = 866
    Height = 554
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 2
    ExplicitWidth = 862
    ExplicitHeight = 553
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 586
    Width = 866
    Height = 19
    Panels = <>
    ExplicitTop = 585
    ExplicitWidth = 862
  end
  object pnlEditor: TPanel
    Left = 0
    Top = 32
    Width = 866
    Height = 554
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 862
    ExplicitHeight = 553
    object Splitter1: TSplitter
      Left = 233
      Top = 0
      Height = 554
      AutoSnap = False
      MinSize = 150
      ResizeStyle = rsUpdate
    end
    object pnlComponents: TPanel
      Left = 0
      Top = 0
      Width = 233
      Height = 554
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitHeight = 553
      object CategoryButtons1: TCategoryButtons
        Left = 0
        Top = 21
        Width = 233
        Height = 533
        Align = alClient
        BorderStyle = bsNone
        ButtonFlow = cbfVertical
        ButtonHeight = 42
        ButtonWidth = 104
        ButtonOptions = [boGradientFill, boShowCaptions, boBoldCaptions, boUsePlusMinus, boCaptionOnlyBorder]
        Categories = <>
        DoubleBuffered = True
        GradientDirection = gdVertical
        ParentDoubleBuffered = False
        PopupMenu = PopupMenu1
        RegularButtonColor = clWhite
        SelectedButtonColor = 15132390
        TabOrder = 0
        OnContextPopup = CategoryButtons1ContextPopup
        OnDrawButton = CategoryButtons1DrawButton
        OnSelectedItemChange = CategoryButtons1SelectedItemChange
        ExplicitHeight = 532
      end
      object lblElementsTitle: TSpTBXLabel
        Left = 0
        Top = 0
        Width = 233
        Height = 21
        Caption = '  Elements'
        Color = clBtnFace
        Align = alTop
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnDraw = edlblPropertiesDraw
      end
    end
    object pnlRight: TPanel
      Left = 236
      Top = 0
      Width = 630
      Height = 554
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 626
      ExplicitHeight = 553
      object Splitter2: TSplitter
        Left = 257
        Top = 0
        Height = 554
        ResizeStyle = rsUpdate
      end
      object pnlPreview: TPanel
        Left = 260
        Top = 0
        Width = 370
        Height = 554
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        OnAlignPosition = pnlPreviewAlignPosition
        ExplicitWidth = 366
        ExplicitHeight = 553
        object lblPreviewTitle: TSpTBXLabel
          Left = 0
          Top = 0
          Width = 370
          Height = 21
          Caption = '  Preview'
          Color = clBtnFace
          Align = alTop
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDraw = edlblPropertiesDraw
          ExplicitWidth = 366
        end
      end
      object pnlProperties: TPanel
        Left = 0
        Top = 0
        Width = 257
        Height = 554
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 553
        object pnlPropertiesEd: TPanel
          Left = 0
          Top = 158
          Width = 257
          Height = 396
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitHeight = 395
          object edSplitter2: TSplitter
            Left = 136
            Top = 0
            Width = 2
            Height = 396
            AutoSnap = False
            ResizeStyle = rsUpdate
            OnMoved = edSplittersMoved
          end
          object pnlPropertiesEdLeft: TPanel
            Left = 0
            Top = 0
            Width = 136
            Height = 396
            Align = alLeft
            BevelOuter = bvNone
            Color = clWindow
            ParentBackground = False
            TabOrder = 0
            ExplicitHeight = 395
            object lblBodyTitle1: TSpTBXLabel
              Left = 0
              Top = 0
              Width = 136
              Height = 21
              Caption = 'Body'
              Color = clBtnFace
              Align = alTop
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblBody1: TSpTBXLabel
              Left = 0
              Top = 42
              Width = 136
              Height = 21
              Caption = 'Gradient Color 1'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBody1
            end
            object lblBody4: TSpTBXLabel
              Left = 0
              Top = 105
              Width = 136
              Height = 21
              Caption = 'Gradient Color 4'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBody4
            end
            object lblBody3: TSpTBXLabel
              Left = 0
              Top = 84
              Width = 136
              Height = 21
              Caption = 'Gradient Color 3'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBody3
            end
            object lblBody2: TSpTBXLabel
              Left = 0
              Top = 63
              Width = 136
              Height = 21
              Caption = 'Gradient Color 2'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBody2
            end
            object lblBordersTitle1: TSpTBXLabel
              Left = 0
              Top = 126
              Width = 136
              Height = 21
              Caption = 'Borders'
              Color = clBtnFace
              Align = alTop
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblBodyType: TSpTBXLabel
              Left = 0
              Top = 21
              Width = 136
              Height = 21
              Caption = 'Type'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBodyType
            end
            object lblBordersType: TSpTBXLabel
              Left = 0
              Top = 147
              Width = 136
              Height = 21
              Caption = 'Type'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBordersType
            end
            object lblBorders1: TSpTBXLabel
              Left = 0
              Top = 168
              Width = 136
              Height = 21
              Caption = 'Top-Left Color'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBorders1
            end
            object lblBorders2: TSpTBXLabel
              Left = 0
              Top = 189
              Width = 136
              Height = 21
              Caption = 'Bottom-Right Color'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBorders2
            end
            object lblBorders3: TSpTBXLabel
              Left = 0
              Top = 210
              Width = 136
              Height = 21
              Caption = 'Internal Top-Left Color'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBorders3
            end
            object lblBorders4: TSpTBXLabel
              Left = 0
              Top = 231
              Width = 136
              Height = 21
              Caption = 'Internal Bottom-Right Color'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edBorders4
            end
            object lblTextTitle1: TSpTBXLabel
              Left = 0
              Top = 252
              Width = 136
              Height = 21
              Caption = 'Text'
              Color = clBtnFace
              Align = alTop
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object lblText1: TSpTBXLabel
              Left = 0
              Top = 273
              Width = 136
              Height = 21
              Caption = 'Text Color'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edText1
            end
          end
          object pnlPropertiesEdRight: TPanel
            Left = 138
            Top = 0
            Width = 119
            Height = 396
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            ParentBackground = False
            TabOrder = 1
            ExplicitHeight = 395
            object lblBodyTitle2: TSpTBXLabel
              Left = 0
              Top = 0
              Width = 119
              Height = 21
              Caption = ' '
              Color = clBtnFace
              Align = alTop
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edBody4: TSpTBXColorEdit
              Left = 0
              Top = 105
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 5
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object edBody3: TSpTBXColorEdit
              Left = 0
              Top = 84
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 4
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object edBody2: TSpTBXColorEdit
              Left = 0
              Top = 63
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 3
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object edBody1: TSpTBXColorEdit
              Left = 0
              Top = 42
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 2
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object lblBordersTitle2: TSpTBXLabel
              Left = 0
              Top = 126
              Width = 119
              Height = 21
              Caption = ' '
              Color = clBtnFace
              Align = alTop
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edBordersType: TSpTBXComboBox
              Left = 0
              Top = 147
              Width = 119
              Height = 21
              Align = alTop
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 7
              OnClick = edChanged
              OnEnter = edEnter
              OnExit = edExit
              Items.Strings = (
                'Rectangle'
                'Rounded'
                'Double Rounded')
              OnDrawBackground = edTypeDrawBackground
            end
            object edBodyType: TSpTBXComboBox
              Left = 0
              Top = 21
              Width = 119
              Height = 21
              Align = alTop
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 1
              OnClick = edChanged
              OnEnter = edEnter
              OnExit = edExit
              Items.Strings = (
                'Solid'
                'Simple Gradient'
                'Simple Gradient Horizontal'
                'Glass Gradient'
                'Glass Gradient Horizontal'
                'Mirror Gradient'
                'Mirror Gradient Horizontal'
                '1/3 Mirror Gradient'
                '1/3 Mirror Gradient Horizontal'
                'Office 2007 Gradient'
                'Office 2007 Gradient Horizontal')
              OnDrawBackground = edTypeDrawBackground
            end
            object edBorders4: TSpTBXColorEdit
              Left = 0
              Top = 231
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 11
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object edBorders1: TSpTBXColorEdit
              Left = 0
              Top = 168
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 8
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object edBorders3: TSpTBXColorEdit
              Left = 0
              Top = 210
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 10
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object edBorders2: TSpTBXColorEdit
              Left = 0
              Top = 189
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 9
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
            object lblTextTitle2: TSpTBXLabel
              Left = 0
              Top = 252
              Width = 119
              Height = 21
              Caption = ' '
              Color = clBtnFace
              Align = alTop
              AutoSize = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edText1: TSpTBXColorEdit
              Left = 0
              Top = 273
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 13
              OnEnter = edEnter
              OnExit = edExit
              SelectedColor = clBlack
              OnSelectedColorChanged = edChanged
            end
          end
        end
        object lblPropertiesTitle: TSpTBXLabel
          Left = 0
          Top = 137
          Width = 257
          Height = 21
          Caption = '  Element Properties'
          Color = clBtnFace
          Align = alTop
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDraw = edlblPropertiesDraw
        end
        object lblGeneralPropertiesTitle: TSpTBXLabel
          Left = 0
          Top = 0
          Width = 257
          Height = 21
          Caption = '  Skin Properties'
          Color = clBtnFace
          Align = alTop
          AutoSize = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnDraw = edlblPropertiesDraw
        end
        object pnlPropertiesGeneral: TPanel
          Left = 0
          Top = 21
          Width = 257
          Height = 116
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object edSplitter1: TSplitter
            Left = 136
            Top = 0
            Width = 2
            Height = 116
            AutoSnap = False
            ResizeStyle = rsUpdate
            OnMoved = edSplittersMoved
          end
          object pnlGeneralEdLeft: TPanel
            Left = 0
            Top = 0
            Width = 136
            Height = 116
            Align = alLeft
            BevelOuter = bvNone
            Color = clWindow
            ParentBackground = False
            TabOrder = 0
            object lblSkinName: TSpTBXLabel
              Left = 0
              Top = 0
              Width = 136
              Height = 21
              Caption = 'Name'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edSkinName
            end
            object lblSkinOfficeMenu: TSpTBXLabel
              Left = 0
              Top = 63
              Width = 136
              Height = 21
              Caption = 'Office Menu'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edSkinOfficeMenu
            end
            object lblSkinOfficeIcons: TSpTBXLabel
              Left = 0
              Top = 42
              Width = 136
              Height = 21
              Caption = 'Office Icons'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edSkinOfficeIcons
            end
            object lblSkinAuthor: TSpTBXLabel
              Left = 0
              Top = 21
              Width = 136
              Height = 21
              Caption = 'Author'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edSkinAuthor
            end
            object lblSkinOfficeStatusbar: TSpTBXLabel
              Left = 0
              Top = 84
              Width = 136
              Height = 21
              Caption = 'Office Statusbar'
              Color = clWindow
              Align = alTop
              AutoSize = False
              Wrapping = twEndEllipsis
              OnClick = edlblClick
              FocusControl = edSkinOfficeStatusbar
            end
          end
          object pnlGeneralEdRight: TPanel
            Left = 138
            Top = 0
            Width = 119
            Height = 116
            Align = alClient
            BevelOuter = bvNone
            Color = clWindow
            ParentBackground = False
            TabOrder = 1
            object edSkinAuthor: TSpTBXEdit
              Left = 0
              Top = 21
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 1
              OnEnter = edEnter
              OnExit = edExit
              OnKeyPress = edKeyPress
            end
            object edSkinName: TSpTBXEdit
              Left = 0
              Top = 0
              Width = 119
              Height = 21
              Align = alTop
              BorderStyle = bsNone
              TabOrder = 0
              OnEnter = edEnter
              OnExit = edExit
              OnKeyPress = edKeyPress
            end
            object edSkinOfficeIcons: TSpTBXComboBox
              Left = 0
              Top = 42
              Width = 119
              Height = 21
              Align = alTop
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 2
              OnClick = edChanged
              OnEnter = edEnter
              OnExit = edExit
              Items.Strings = (
                'False'
                'True')
              OnDrawBackground = edTypeDrawBackground
            end
            object edSkinOfficeMenu: TSpTBXComboBox
              Left = 0
              Top = 63
              Width = 119
              Height = 21
              Align = alTop
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 3
              OnClick = edChanged
              OnEnter = edEnter
              OnExit = edExit
              Items.Strings = (
                'False'
                'True')
              OnDrawBackground = edTypeDrawBackground
            end
            object edSkinOfficeStatusbar: TSpTBXComboBox
              Left = 0
              Top = 84
              Width = 119
              Height = 21
              Align = alTop
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 4
              OnClick = edChanged
              OnEnter = edEnter
              OnExit = edExit
              Items.Strings = (
                'False'
                'True')
              OnDrawBackground = edTypeDrawBackground
            end
          end
        end
      end
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 866
    AutoSize = True
    ButtonHeight = 28
    ButtonWidth = 28
    Caption = 'ToolBar1'
    EdgeBorders = [ebTop, ebBottom]
    Images = ImageList1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
    ExplicitWidth = 862
    object ToolButton1: TToolButton
      Left = 0
      Top = 0
      Action = aNew
    end
    object ToolButton2: TToolButton
      Left = 28
      Top = 0
      Action = aOpen
    end
    object ToolButton3: TToolButton
      Left = 56
      Top = 0
      Action = aSave
    end
    object ToolButton4: TToolButton
      Left = 84
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 3
      Style = tbsSeparator
    end
    object ToolButton5: TToolButton
      Left = 92
      Top = 0
      Action = aCopy
    end
    object ToolButton6: TToolButton
      Left = 120
      Top = 0
      Action = aPaste
    end
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 280
    object mFile1: TMenuItem
      Caption = 'File'
      object mNew1: TMenuItem
        Action = aNew
      end
      object mOpen1: TMenuItem
        Action = aOpen
      end
      object mSave1: TMenuItem
        Action = aSave
      end
      object mSaveAs1: TMenuItem
        Action = aSaveAs
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mExit1: TMenuItem
        Action = aExit
      end
    end
    object mEdit1: TMenuItem
      Caption = 'Edit'
      object mCopy1: TMenuItem
        Action = aCopy
      end
      object mPaste1: TMenuItem
        Action = aPaste
      end
      object mPasteSpecial: TMenuItem
        Caption = 'Paste Special'
        object mPasteBody1: TMenuItem
          Action = aPasteBody
        end
        object mPasteBorders1: TMenuItem
          Action = aPasteBorders
        end
        object mPasteText1: TMenuItem
          Action = aPasteText
        end
      end
    end
    object mHelp1: TMenuItem
      Caption = 'Help'
      object mHelp2: TMenuItem
        Action = aHelp
      end
      object mCheckforUpdates1: TMenuItem
        Action = aCheckUpdates
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object mAbout1: TMenuItem
        Action = aAbout
      end
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'skn'
    Filter = 'Skin Files (*.skn)|*.skn'
    Left = 104
    Top = 280
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'skn'
    Filter = 'Skin Files (*.skn)|*.skn'
    Left = 184
    Top = 280
  end
  object ActionList1: TActionList
    Left = 112
    Top = 352
    object aHelp: TAction
      Category = 'Help'
      Caption = 'Help'
      OnExecute = aHelpExecute
    end
    object aCopy: TAction
      Category = 'Edit'
      Caption = 'Copy'
      Hint = 'Copy'
      ImageIndex = 3
      ShortCut = 24643
      OnExecute = aCopyExecute
    end
    object aCheckUpdates: TAction
      Category = 'Help'
      Caption = 'Check for Updates...'
      OnExecute = aCheckUpdatesExecute
    end
    object aPaste: TAction
      Category = 'Edit'
      Caption = 'Paste'
      Hint = 'Paste'
      ImageIndex = 4
      ShortCut = 24662
      OnExecute = aPasteExecute
    end
    object aPasteBody: TAction
      Category = 'Edit'
      Caption = 'Paste Body'
      OnExecute = aPasteBodyExecute
    end
    object aPasteBorders: TAction
      Category = 'Edit'
      Caption = 'Paste Borders'
      OnExecute = aPasteBordersExecute
    end
    object aPasteText: TAction
      Category = 'Edit'
      Caption = 'Paste Text'
      OnExecute = aPasteTextExecute
    end
    object aNew: TAction
      Category = 'File'
      Caption = 'New'
      Hint = 'New'
      ImageIndex = 0
      ShortCut = 16462
      OnExecute = aNewExecute
    end
    object aOpen: TAction
      Category = 'File'
      Caption = 'Open...'
      Hint = 'Open'
      ImageIndex = 1
      ShortCut = 16463
      OnExecute = aOpenExecute
    end
    object aSave: TAction
      Category = 'File'
      Caption = 'Save'
      Hint = 'Save'
      ImageIndex = 2
      ShortCut = 16467
      OnExecute = aSaveExecute
    end
    object aSaveAs: TAction
      Category = 'File'
      Caption = 'Save As...'
      OnExecute = aSaveAsExecute
    end
    object aExit: TAction
      Category = 'File'
      Caption = 'Exit'
      OnExecute = aExitExecute
    end
    object aAbout: TAction
      Category = 'Help'
      Caption = 'About SkinEditor'
      OnExecute = aAboutExecute
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 32
    Top = 352
    object smCopy1: TMenuItem
      Action = aCopy
    end
    object smPaste1: TMenuItem
      Action = aPaste
    end
    object smPasteSpecial1: TMenuItem
      Caption = 'Paste Special'
      object smPasteBody1: TMenuItem
        Action = aPasteBody
      end
      object smPasteBorders1: TMenuItem
        Action = aPasteBorders
      end
      object smPasteText1: TMenuItem
        Action = aPasteText
      end
    end
  end
  object ImageList1: TImageList
    Left = 184
    Top = 352
    Bitmap = {
      494C010105000A00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      000000000000000000000000000000000000000000000000000000669A000066
      9A0000669A00B8898900B8898900B8898900B8898900B8898900B8898900B889
      8900B8898900B8898900B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A003CBEE30036BA
      E10030B6DF00B8898900FEFEFD00FEFEFE00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0045C4E6003FC0
      E40038BCE200B8898900FEFBF800B27E7300B27E7300B27E7300B27E7300B27E
      7300B27E7300FEFBF800B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A004DC9E90047C4
      E70041C0E500B8898900FEF8F300FFF4EC00FEF6EE00FEF8F100FFF9F400FEFB
      F600FEFCF900FEF8F300B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0056CDED0050C9
      EA004AC5E800B8898900FEF6ED00B27E7300B27E7300B27E7300B27E7300B27E
      7300B27E7300FEF6ED00B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A005ED2F00058CF
      ED0052CBEB00B8898900FFF0E300FFF0E300FFF0E300FFF1E500FFF2E600FFF3
      E900FFF5EB00FFF0E300B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0066D7F30060D4
      F1005AD0EE00B8898900FFEDDD00B27E7300B27E7300B27E7300B27E7300CDA9
      9E00CCAA9E00D7C5BA00B8898900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A006DDBF60067D8
      F30062D4F200B8898900FFEBD800FFEAD700FFEBD800FFEBD800FFEBD800C4AA
      A700C5ABA800CDB5B000CD999900000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0074DFF8006FDC
      F6006ADAF400B8898900FFE8D200FFE8D200FFE8D200FFE8D200FBE4CF00C6AC
      A900FEFEFE00CD99990000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A007AE3FA0076E1
      F80070DDF600B8898900FFE6CF00FFE6CF00FFE6CF00FFE6CF00E9CFBF00D2BA
      B400CD99990000669A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A007FE6FC007BE4
      FA0077E1F900B8898900B8898900B8898900B8898900B8898900B8898900CD99
      990052CAEB0000669A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0083E8FE0080E6
      FC007DE5FC007DE5FC0078E2FA0072DFF8006BDAF50064D5F2005DD0EF0056CD
      ED0052CAEB0000669A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0084E9FE0084E9
      FE007373730073737300737373007373730073737300737373007373730060D4
      F0005ACFEE0000669A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000669A0084E9FE0084E9
      FE0073737300CFC1BC00CFC1BB00CFC1BB00CFC1BB00CEBEB7007373730068D8
      F40062D4F10000669A0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000669A000066
      9A0073737300E2D8D300FAF9F800F9F8F700F9F8F700D0C5BF00737373000066
      9A0000669A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007373730073737300737373007373730073737300000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6
      A400C2A6A400C2A6A400000000000000000000000000078DBE00078DBE00078D
      BE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078DBE00078D
      BE00078DBE00078DBE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B8898900B8898900B8898900B8898900B8898900B8898900B889
      8900B8898900B8898900B8898900000000000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00C2A6A4000000000000000000078DBE0025A1D10072C7E70085D7
      FA0066CDF90065CDF90065CDF90065CDF90065CDF80065CDF90065CDF80066CE
      F90039ADD800078DBE000000000000000000000000000000000097433F009743
      3F00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B00B59A9B009330
      300097433F000000000000000000000000000000000000000000000000000000
      000000000000B8898900FEFEFD00FEFEFE00FEFEFD00FEFEFD00FEFEFD00FEFE
      FD00FEFEFD00FEFEFD00B8898900000000000000000000000000C2A6A400FEFC
      FB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFCFB00FEFC
      FB00FEFCFB00C2A6A4000000000000000000078DBE004CBCE70039A8D100A0E2
      FB006FD4FA006FD4F9006ED4FA006FD4F9006FD4FA006FD4FA006FD4FA006ED4
      F9003EB1D90084D7EB00078DBE00000000000000000097433F00D6686800C660
      6000E5DEDF0092292A0092292A00E4E7E700E0E3E600D9DFE000CCC9CC008F20
      1F00AF46460097433F0000000000000000000000000000000000000000000000
      000000000000B8898900FEFBF800B27E7300B27E7300B27E7300B27E7300B27E
      7300B27E7300FEFBF800B8898900000000000000000000000000C2A6A400FEFA
      F500FEFCFB00FEFAF500FEFAF500FEFCFB00FEFAF500FEFAF500FEFCFB00FEFA
      F500FEFAF500C2A6A4000000000000000000078DBE0072D6FA00078DBE00AEEA
      FC0079DCFB0079DCFB0079DCFB0079DCFB0079DCFB007ADCFB0079DCFA0079DC
      FA0044B5D900AEF1F900078DBE00000000000000000097433F00D0656600C25F
      5F00E9E2E20092292A0092292A00E2E1E300E2E6E800DDE2E400CFCCCF008F22
      2200AD46460097433F0000000000000000000000000000000000000000000000
      000000000000B8898900FEF8F300FEFAF600FEF8F300FEF8F300FEF8F300FEF8
      F300FEF8F300FEF8F300B8898900000000000000000000000000C2A6A400FEFA
      F500FEFAF500FEFAF500FEFAF500FEFAF500FEFAF500FEFAF500FEFAF500FEFA
      F500FEFAF500C2A6A4000000000000000000078DBE0079DDFB001899C7009ADF
      F30092E7FB0084E4FB0083E4FC0083E4FC0084E4FC0083E4FC0083E4FB0084E5
      FC0048B9DA00B3F4F900078DBE00000000000000000097433F00D0656500C15D
      5D00ECE4E40092292A0092292A00DFDDDF00E1E6E800E0E5E700D3D0D2008A1E
      1E00AB44440097433F000000000000000000B8898900B8898900B8898900B889
      8900B8898900B8898900FEF6ED00B27E7300B27E7300B27E7300B27E7300B27E
      7300B27E7300FEF6ED00B8898900000000000000000000000000C2A6A400FEF7
      F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7F000FEF7
      F000FEF7F000C2A6A4000000000000000000078DBE0082E3FC0043B7DC0065C3
      E000ACF0FD008DEBFC008DEBFC008DEBFD008DEBFD008DEBFC008DEBFD000C85
      18004CBBDA00B6F7F9006DCAE000078DBE000000000097433F00D0656500C15B
      5C00EFE6E600EDE5E500E5DEDF00E0DDDF00DFE0E200E0E1E300D6D0D200962A
      2A00B24A4A0097433F000000000000000000B8898900FEFEFD00FEFEFE00FEFE
      FD00FEFEFD00B8898900FEF3E800FFF4EA00FEF3E800FEF3E800FEF3E800FEF3
      E800FEF3E800FEF3E800B8898900000000000000000000000000C2A6A400FEF7
      F000FEF7F000FEF7F000FEF7F000FEF3E900FEF7F000FEF7F000FEF3E900FEF7
      F000FEF7F000C2A6A4000000000000000000078DBE008AEAFC0077DCF300229C
      C600FDFFFF00C8F7FE00C9F7FE00C9F7FE00C9F7FE00C8F7FE000C8518003CBC
      5D000C851800DEF9FB00D6F6F900078DBE000000000097433F00CD626300C860
      6000C9676700CC727200CA727100C6696900C4646400CC6D6C00CA666700C55D
      5D00CD65650097433F000000000000000000B8898900FEFBF800B27E7300B27E
      7300B27E7300B8898900FFF0E300B27E7300B27E7300B27E7300B27E7300B27E
      7300B27E7300FFF0E300B8898900000000000000000000000000C2A6A400FEF3
      E900FEF3E900FEF3E900FEF3E900FEF3E900FEF3E900FEF3E900FEF3E900FEF3
      E900FEF3E900C2A6A4000000000000000000078DBE0093F0FE0093F0FD001697
      C500078DBE00078DBE00078DBE00078DBE00078DBE000C85180052D97F0062ED
      970041C465000C851800078DBE00078DBE000000000097433F00B6555300C27B
      7800D39D9C00D7A7A500D8A7A600D8A6A500D7A09F00D5A09F00D7A9A700D8AB
      AB00CC66670097433F000000000000000000B8898900FEF8F300FEFAF600FEF8
      F300FEF8F300B8898900FFEDDD00FFEDDD00FFEDDD00FFEDDD00FFEDDD00E9D5
      C900E7D6C900D7C5BA00B8898900000000000000000000000000C2A6A400FFF0
      E200FFF0E200FEF3E900FFEEDE00FEF3E900FFEEDE00FEF3E900FFEEDE00FEF3
      E900FFEEDE00C2A6A4000000000000000000078DBE009BF5FE009AF6FE009AF6
      FE009BF5FD009BF6FE009AF6FE009BF5FE000C85180046CE6C0059E4880058E1
      880061EB940040C165000C851800000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000B8898900FEF6ED00B27E7300B27E
      7300B27E7300B8898900FFEBD800FFEAD700FFEBD800FFEBD800FFEBD800C4AA
      A700C5ABA800CDB5B000CD999900000000000000000000000000C2A6A400FEF3
      E900FFEEDE00FFF0E200FEF3E900FFEEDE00FFF0E200DDCFC200DDCFC200DDCF
      C200DDCFC200C2A6A4000000000000000000078DBE00FEFEFE00A0FBFF00A0FB
      FE00A0FBFE00A1FAFE00A1FBFE000C8518000C8518000C8518000C85180056E1
      840047CD6E000C8518000C8518000C8518000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000B8898900FEF3E800FFF4EA00FEF3
      E800FEF3E800B8898900FFE8D200FFE8D200FFE8D200FFE8D200FBE4CF00C6AC
      A900FEFEFE00CD99990000000000000000000000000000000000C2A6A400FFEE
      DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00C3B4A800C3B4A800C3B4
      A800C3B4A800C2A6A400000000000000000000000000078DBE00FEFEFE00A5FE
      FF00A5FEFF00A5FEFF00078CB60043B7DC0043B7DC0043B7DC000C8518004EDD
      790036BA54000C85180000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F000000000000000000B8898900FFF0E300B27E7300B27E
      7300B27E7300B8898900FFE6CF00FFE6CF00FFE6CF00FFE6CF00E9CFBF00D2BA
      B400CD9999000000000000000000000000000000000000000000C2A6A400FFEE
      DE00FFEAD700FFEEDE00FFEAD700FFEAD700FFEEDE00B0A29600B0A29600B0A2
      9600B0A29600C2A6A40000000000000000000000000000000000078DBE00078D
      BE00078DBE00078DBE00000000000000000000000000000000000C85180040D0
      65000C8518000000000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000B8898900FFEDDD00FFEDDD00FFED
      DD00FFEDDD00B8898900B8898900B8898900B8898900B8898900B8898900CD99
      9900000000000000000000000000000000000000000000000000C2A6A400FFEA
      D700FFEAD700FFEAD700FFEAD700FFEAD700C9B9AC00FEFAF500FEF7F000E6DA
      D900C2A6A4000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C8518002AB743002DBA
      49000C8518000000000000000000000000000000000097433F00CC666700F9F9
      F900CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00CDCDCD00F9F9
      F900CC66670097433F000000000000000000B8898900FFEBD800FFEAD700FFEB
      D800FFEBD800FFEBD800C4AAA700C5ABA800CDB5B000CD999900000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFEA
      D700FFE6D000FFEAD700FFE6D000FFEAD700C5B5A900FEFAF500DDCFC200C2A6
      A400000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000C85180021B538000C85
      1800000000000000000000000000000000000000000097433F00CC666700F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F900CC66670097433F000000000000000000B8898900FFE8D200FFE8D200FFE8
      D200FFE8D200FBE4CF00C6ACA900FEFEFE00CD99990000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400FFE6
      D000FFE6D000FFE6D000FFE6D000FFE6D000C9B9AC00DDCFC200C2A6A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000C8518000C8518000C8518000C8518000000
      000000000000000000000000000000000000000000000000000097433F00F9F9
      F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9F900F9F9
      F90097433F00000000000000000000000000B8898900FFE6CF00FFE6CF00FFE6
      CF00FFE6CF00E9CFBF00D2BAB400CD9999000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C2A6A400C2A6
      A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400C2A6A400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000C8518000C8518000C8518000C85180000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B8898900B8898900B8898900B889
      8900B8898900B8898900CD999900000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00C0010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080030000000000008003000000000000
      8003000000000000800300000000000080030000000000008003000000000000
      C007000000000000F83F000000000000C0038003FFFFF801C0030003C007F801
      C00300018003F801C00300018003F801C003000180030001C003000080030001
      C003000080030001C003000080030001C003000180030001C003000080030003
      C003800380030007C003C3C78003000FC007FF878003003FC00FFF8F8003007F
      C01FFE1FC00700FFC03FF87FFFFF01FF00000000000000000000000000000000
      000000000000}
  end
end
