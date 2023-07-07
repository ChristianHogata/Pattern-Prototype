object formDt: TformDt
  Left = 0
  Top = 0
  ClientHeight = 261
  ClientWidth = 459
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 459
    Height = 261
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 455
    ExplicitHeight = 260
    object Label1: TLabel
      Left = 24
      Top = 91
      Width = 32
      Height = 15
      Caption = 'Name'
    end
    object Label2: TLabel
      Left = 24
      Top = 19
      Width = 102
      Height = 15
      Caption = 'Select a Name Type'
    end
    object Label3: TLabel
      Left = 24
      Top = 143
      Width = 30
      Height = 15
      Caption = 'Order'
    end
    object edtName: TEdit
      Left = 24
      Top = 112
      Width = 233
      Height = 23
      TabOrder = 0
    end
    object btnFinish: TButton
      Left = 192
      Top = 210
      Width = 75
      Height = 25
      Caption = 'Finish'
      TabOrder = 1
      OnClick = btnFinishClick
    end
    object ComboBox1: TComboBox
      Left = 24
      Top = 40
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 2
      Text = 'Person'
      Items.Strings = (
        'Person'
        'Enterprise')
    end
    object editOrder: TEdit
      Left = 24
      Top = 164
      Width = 233
      Height = 23
      TabOrder = 3
    end
  end
end
