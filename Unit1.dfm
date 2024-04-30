object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 104
    Top = 32
    Width = 424
    Height = 36
    Caption = 'Calculadora de idade universal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 56
    Top = 120
    Width = 170
    Height = 15
    Caption = 'Digite a sua idade em segundos:'
  end
  object Label3: TLabel
    Left = 56
    Top = 208
    Width = 116
    Height = 15
    Caption = 'Escolha o seu planeta:'
  end
  object Edit1: TEdit
    Left = 56
    Top = 141
    Width = 170
    Height = 23
    TabOrder = 0
  end
  object ComboBoxEx1: TComboBoxEx
    Left = 56
    Top = 248
    Width = 145
    Height = 24
    ItemsEx = <
      item
        Caption = 'Terra'
      end
      item
        Caption = 'Merc'#250'rio'
      end
      item
        Caption = 'V'#234'nus'
      end
      item
        Caption = 'Marte'
      end
      item
        Caption = 'J'#250'piter'
      end
      item
        Caption = 'Saturno'
      end
      item
        Caption = 'Urano'
      end
      item
        Caption = 'Netuno'
      end>
    TabOrder = 1
  end
  object Button1: TButton
    Left = 360
    Top = 197
    Width = 97
    Height = 39
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = Button1Click
  end
end
