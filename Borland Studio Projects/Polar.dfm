object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Polar'
  ClientHeight = 194
  ClientWidth = 238
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindow
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 69
    Height = 13
    Caption = 'Notacion Polar'
  end
  object Label2: TLabel
    Left = 8
    Top = 48
    Width = 48
    Height = 13
    Caption = 'Magnitud:'
  end
  object Label3: TLabel
    Left = 8
    Top = 96
    Width = 37
    Height = 13
    Caption = 'Angulo:'
  end
  object Edit1: TEdit
    Left = 62
    Top = 45
    Width = 121
    Height = 21
    Color = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 62
    Top = 93
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 161
    Width = 75
    Height = 25
    Caption = 'Aceptar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 161
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
end
