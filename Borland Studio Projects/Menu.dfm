object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Menu'
  ClientHeight = 369
  ClientWidth = 625
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 431
    Top = 295
    Width = 21
    Height = 13
    Caption = 'Real'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 431
    Top = 325
    Width = 50
    Height = 13
    Caption = 'Imaginario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 256
    Top = 295
    Width = 34
    Height = 13
    Caption = 'Modulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 257
    Top = 325
    Width = 33
    Height = 13
    Caption = 'Angulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Button1: TButton
    Left = 8
    Top = 24
    Width = 97
    Height = 25
    Caption = 'Rectangular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 24
    Width = 75
    Height = 25
    Caption = 'Polar'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 248
    Top = 24
    Width = 91
    Height = 25
    Caption = 'Nuevo numero'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Grid1: TStringGrid
    Left = 8
    Top = 80
    Width = 473
    Height = 209
    RowCount = 2
    TabOrder = 3
    ColWidths = (
      64
      97
      107
      104
      92)
  end
  object Button4: TButton
    Left = 384
    Top = 24
    Width = 97
    Height = 25
    Caption = 'Quitar'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 312
    Width = 33
    Height = 21
    TabOrder = 5
  end
  object Button5: TButton
    Left = 47
    Top = 314
    Width = 25
    Height = 22
    Caption = '+'
    TabOrder = 6
    OnClick = Button5Click
  end
  object Edit2: TEdit
    Left = 78
    Top = 312
    Width = 33
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 296
    Top = 295
    Width = 129
    Height = 21
    Enabled = False
    TabOrder = 8
  end
  object Button6: TButton
    Left = 128
    Top = 312
    Width = 41
    Height = 25
    Caption = '='
    TabOrder = 9
    OnClick = Button6Click
  end
  object Edit4: TEdit
    Left = 296
    Top = 322
    Width = 129
    Height = 21
    Enabled = False
    TabOrder = 10
  end
  object Button7: TButton
    Left = 520
    Top = 184
    Width = 75
    Height = 25
    Caption = 'Creditos'
    TabOrder = 11
    OnClick = Button7Click
  end
  object Button9: TButton
    Left = 520
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Salir'
    TabOrder = 12
    OnClick = Button9Click
  end
end
