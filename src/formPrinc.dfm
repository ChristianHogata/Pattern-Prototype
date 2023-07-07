object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pattern Abstract Factory'
  ClientHeight = 266
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
    Height = 266
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitWidth = 455
    ExplicitHeight = 265
    object Label1: TLabel
      Left = 8
      Top = 191
      Width = 429
      Height = 13
      Caption = 
        'PRESS THIS BUTTON FOR INSERT A NAME AND NUMBER OF ORDER IN THE M' +
        'EMO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Memo1: TMemo
      Left = 8
      Top = 8
      Width = 443
      Height = 177
      Lines.Strings = (
        '')
      ReadOnly = True
      TabOrder = 0
    end
    object btnStart: TButton
      Left = 8
      Top = 224
      Width = 75
      Height = 25
      Caption = 'START'
      TabOrder = 1
      OnClick = btnStartClick
    end
    object Button1: TButton
      Left = 376
      Top = 224
      Width = 75
      Height = 25
      Caption = 'REPEAT'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
end
