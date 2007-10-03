object optionsform: Toptionsform
  Left = 547
  Top = 163
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'Preferences'
  ClientHeight = 304
  ClientWidth = 421
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    421
    304)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 421
    Height = 271
    ActivePage = TabSheet1
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Miscellaneous'
      object Label4: TLabel
        Left = 16
        Top = 104
        Width = 37
        Height = 13
        Caption = 'Log last'
      end
      object Label5: TLabel
        Left = 142
        Top = 104
        Width = 95
        Height = 13
        Caption = 'Lines in SQL-History'
      end
      object CheckBoxAutoReconnect: TCheckBox
        Left = 16
        Top = 16
        Width = 334
        Height = 17
        Caption = 'Automatically reconnect to last session-account on startup'
        TabOrder = 0
        OnClick = Modified
      end
      object CheckBoxConvertHTMLEntities: TCheckBox
        Left = 16
        Top = 70
        Width = 305
        Height = 17
        Caption = 'Convert HTML-entities when copying/saving data (<, >)'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = Modified
      end
      object updownLogSQLNum: TUpDown
        Left = 120
        Top = 101
        Width = 17
        Height = 21
        Associate = editLogSQLNum
        Min = 1
        Max = 32767
        Position = 1
        TabOrder = 2
        Wrap = True
        OnChanging = anyUpDownLimitChanging
      end
      object editLogSQLNum: TEdit
        Left = 67
        Top = 101
        Width = 53
        Height = 21
        TabOrder = 3
        Text = '1'
        OnChange = Modified
      end
      object CheckBoxRestoreLastUsedDB: TCheckBox
        Left = 16
        Top = 42
        Width = 297
        Height = 17
        Caption = 'Restore last used database on startup'
        Checked = True
        State = cbChecked
        TabOrder = 4
        OnClick = Modified
      end
      object chkLogToFile: TCheckBox
        Left = 16
        Top = 135
        Width = 145
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Write SQL log to file'
        TabOrder = 5
        OnClick = Modified
      end
      object btnOpenLogFolder: TButton
        Left = 167
        Top = 134
        Width = 106
        Height = 20
        Caption = 'Open log folder ...'
        TabOrder = 6
        OnClick = btnOpenLogFolderClick
      end
    end
    object TabSheet2: TTabSheet
      BorderWidth = 5
      Caption = 'SQL-Appearance'
      ImageIndex = 1
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 403
        Height = 233
        ActivePage = TabSheet3
        Align = alClient
        TabOrder = 0
        object TabSheet3: TTabSheet
          Caption = 'Font'
          object Label2: TLabel
            Left = 156
            Top = 60
            Width = 29
            Height = 13
            Caption = 'points'
          end
          object Label1: TLabel
            Left = 16
            Top = 59
            Width = 23
            Height = 13
            Caption = 'Size:'
          end
          object Label3: TLabel
            Left = 16
            Top = 32
            Width = 26
            Height = 13
            Caption = 'Font:'
          end
          object Label25: TLabel
            Left = 16
            Top = 96
            Width = 40
            Height = 13
            Caption = 'Pattern:'
          end
          object Panel1: TPanel
            Left = 93
            Top = 96
            Width = 193
            Height = 41
            BevelOuter = bvLowered
            Caption = 'Aa Bb Cc 123'
            TabOrder = 0
          end
          object ComboBoxFonts: TComboBox
            Left = 93
            Top = 29
            Width = 193
            Height = 21
            Style = csDropDownList
            ItemHeight = 0
            TabOrder = 1
            OnChange = FontsChange
          end
          object EditFontSize: TEdit
            Left = 93
            Top = 56
            Width = 41
            Height = 21
            TabOrder = 2
            Text = '9'
            OnChange = FontsChange
          end
          object UpDownFontSize: TUpDown
            Left = 134
            Top = 56
            Width = 16
            Height = 21
            Associate = EditFontSize
            Position = 9
            TabOrder = 3
          end
        end
        object TabSheet4: TTabSheet
          Caption = 'Color-Coding'
          ImageIndex = 1
          object Label6: TLabel
            Left = 16
            Top = 27
            Width = 51
            Height = 13
            Caption = 'Keywords:'
          end
          object Label7: TLabel
            Left = 16
            Top = 61
            Width = 50
            Height = 13
            Caption = 'Functions:'
          end
          object Label8: TLabel
            Left = 192
            Top = 27
            Width = 76
            Height = 13
            Caption = 'Numeric Values:'
          end
          object Label9: TLabel
            Left = 16
            Top = 94
            Width = 59
            Height = 13
            Caption = 'Data Types:'
          end
          object Label10: TLabel
            Left = 192
            Top = 61
            Width = 66
            Height = 13
            Caption = 'String Values:'
          end
          object Label11: TLabel
            Left = 192
            Top = 94
            Width = 54
            Height = 13
            Caption = 'Comments:'
          end
          object Label28: TLabel
            Left = 16
            Top = 127
            Width = 66
            Height = 13
            Caption = 'Table-Names:'
          end
          object pnlKeywords: TPanel
            Left = 104
            Top = 25
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 0
            OnClick = CallColorDialog
          end
          object pnlFunctions: TPanel
            Left = 104
            Top = 56
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 1
            OnClick = CallColorDialog
          end
          object pnlDatatypes: TPanel
            Left = 104
            Top = 87
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 2
            OnClick = CallColorDialog
          end
          object pnlNumeric: TPanel
            Left = 296
            Top = 24
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 3
            OnClick = CallColorDialog
          end
          object pnlString: TPanel
            Left = 296
            Top = 56
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 4
            OnClick = CallColorDialog
          end
          object pnlComments: TPanel
            Left = 296
            Top = 88
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 5
            OnClick = CallColorDialog
          end
          object pnlTablenames: TPanel
            Left = 104
            Top = 121
            Width = 25
            Height = 25
            Cursor = crHandPoint
            BevelOuter = bvLowered
            ParentBackground = False
            TabOrder = 6
            OnClick = CallColorDialog
          end
        end
      end
    end
    object TabSheet7: TTabSheet
      BorderWidth = 5
      Caption = 'Data-Appearance'
      ImageIndex = 4
      object Label27: TLabel
        Left = 8
        Top = 93
        Width = 166
        Height = 13
        Caption = 'Background-color for NULL-values:'
      end
      object Label26: TLabel
        Left = 257
        Top = 40
        Width = 36
        Height = 13
        Caption = 'records'
      end
      object Label19: TLabel
        Left = 8
        Top = 68
        Width = 177
        Height = 13
        Caption = 'Maximum column-width in data-grids:'
      end
      object Label20: TLabel
        Left = 256
        Top = 68
        Width = 75
        Height = 13
        Caption = '(0 = automatic)'
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 118
        Width = 403
        Height = 115
        Align = alBottom
        Caption = 
          'Change this font in order to view special language characters in' +
          ' data-grids:'
        TabOrder = 0
        object Label21: TLabel
          Left = 20
          Top = 24
          Width = 26
          Height = 13
          Caption = 'Font:'
        end
        object Label23: TLabel
          Left = 20
          Top = 51
          Width = 23
          Height = 13
          Caption = 'Size:'
        end
        object Label24: TLabel
          Left = 20
          Top = 80
          Width = 40
          Height = 13
          Caption = 'Pattern:'
        end
        object Label22: TLabel
          Left = 160
          Top = 52
          Width = 29
          Height = 13
          Caption = 'points'
        end
        object Panel8: TPanel
          Left = 97
          Top = 80
          Width = 193
          Height = 25
          BevelOuter = bvLowered
          Caption = 'Aa Bb Cc 123'
          TabOrder = 0
        end
        object ComboBoxDataFonts: TComboBox
          Left = 97
          Top = 21
          Width = 193
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 1
          OnChange = DataFontsChange
        end
        object Edit4: TEdit
          Left = 97
          Top = 48
          Width = 41
          Height = 21
          TabOrder = 2
          Text = '8'
          OnChange = DataFontsChange
        end
        object UpDownDataFontSize: TUpDown
          Left = 138
          Top = 48
          Width = 16
          Height = 21
          Associate = Edit4
          Position = 8
          TabOrder = 3
        end
      end
      object Panel9: TPanel
        Left = 190
        Top = 91
        Width = 60
        Height = 18
        Cursor = crHandPoint
        BevelOuter = bvLowered
        Color = clAqua
        ParentBackground = False
        TabOrder = 1
        OnClick = CallColorDialog
      end
      object CheckBoxlimit: TCheckBox
        Left = 8
        Top = 40
        Width = 169
        Height = 17
        Caption = 'View data by default limited to'
        Checked = True
        State = cbChecked
        TabOrder = 2
        OnClick = CheckBoxlimitClick
      end
      object EditLimit: TEdit
        Left = 189
        Top = 37
        Width = 41
        Height = 21
        TabOrder = 3
        Text = '50'
        OnChange = Modified
      end
      object UpDownLimit: TUpDown
        Left = 230
        Top = 37
        Width = 16
        Height = 21
        Associate = EditLimit
        Max = 32767
        Position = 50
        TabOrder = 4
        OnChanging = anyUpDownLimitChanging
      end
      object editDefaultColWidth: TEdit
        Left = 188
        Top = 65
        Width = 42
        Height = 21
        TabOrder = 5
        Text = '0'
        OnChange = Modified
      end
      object updownDefaultColWidth: TUpDown
        Left = 230
        Top = 65
        Width = 16
        Height = 21
        Associate = editDefaultColWidth
        Max = 1000
        TabOrder = 6
        OnChanging = anyUpDownLimitChanging
      end
      object chkRememberFilters: TCheckBox
        Left = 8
        Top = 12
        Width = 391
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Remember WHERE filters'
        Checked = True
        State = cbChecked
        TabOrder = 7
        OnClick = Modified
      end
    end
    object TabSheet5: TTabSheet
      BorderWidth = 5
      Caption = 'CSV-Options'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 403
        Height = 233
        Align = alClient
        Caption = 'CSV-Strings for copying/saving CSV-data'
        TabOrder = 0
        object Label12: TLabel
          Left = 16
          Top = 32
          Width = 98
          Height = 13
          Caption = 'Fields separated by:'
        end
        object Label13: TLabel
          Left = 16
          Top = 82
          Width = 98
          Height = 13
          Caption = 'Lines terminated by:'
        end
        object Label14: TLabel
          Left = 16
          Top = 58
          Width = 91
          Height = 13
          Caption = 'Fields enclosed by:'
        end
        object Label15: TLabel
          Left = 248
          Top = 120
          Width = 102
          Height = 13
          Caption = '\r  =  Carriage return'
        end
        object Label16: TLabel
          Left = 248
          Top = 136
          Width = 70
          Height = 13
          Caption = '\n  =  New line'
        end
        object Label17: TLabel
          Left = 248
          Top = 152
          Width = 46
          Height = 13
          Caption = '\t  =  Tab'
        end
        object Label18: TLabel
          Left = 16
          Top = 120
          Width = 219
          Height = 13
          Caption = 'Note: You can use these escaped characters:'
        end
        object Edit1: TEdit
          Left = 120
          Top = 30
          Width = 57
          Height = 21
          MaxLength = 10
          TabOrder = 0
          Text = 'Edit1'
          OnChange = Modified
        end
        object Edit2: TEdit
          Left = 120
          Top = 54
          Width = 57
          Height = 21
          MaxLength = 10
          TabOrder = 1
          Text = 'Edit2'
          OnChange = Modified
        end
        object Edit3: TEdit
          Left = 120
          Top = 79
          Width = 57
          Height = 21
          MaxLength = 10
          TabOrder = 2
          Text = 'Edit3'
          OnChange = Modified
        end
      end
    end
  end
  object ButtonCancel: TButton
    Left = 266
    Top = 278
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = 'Cancel'
    TabOrder = 1
    OnClick = ButtonCancelClick
  end
  object ButtonOK: TButton
    Left = 186
    Top = 278
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Default = True
    TabOrder = 0
    OnClick = ButtonOKClick
  end
  object ButtonApply: TButton
    Left = 346
    Top = 278
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Apply'
    Enabled = False
    TabOrder = 2
    OnClick = Apply
  end
  object ColorDialog1: TColorDialog
    Options = [cdFullOpen, cdSolidColor]
    Left = 109
    Top = 229
  end
end
