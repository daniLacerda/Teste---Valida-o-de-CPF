object frmValidacao: TfrmValidacao
  Left = 0
  Top = 0
  Caption = 'frmValidacao'
  ClientHeight = 400
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMemo: TPanel
    Left = 19
    Top = 96
    Width = 409
    Height = 281
    TabOrder = 0
    object mem1Conta: TMemo
      Left = 11
      Top = 21
      Width = 185
      Height = 241
      Lines.Strings = (
        'mem1Conta')
      TabOrder = 0
    end
    object mem2Conta: TMemo
      Left = 210
      Top = 21
      Width = 185
      Height = 241
      Lines.Strings = (
        'mem2Conta')
      TabOrder = 1
    end
  end
  object pnlCPF: TPanel
    Left = 19
    Top = 17
    Width = 409
    Height = 48
    TabOrder = 1
    object Label1: TLabel
      Left = 19
      Top = 19
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object lblCPF: TLabel
      Left = 143
      Top = 19
      Width = 61
      Height = 13
      Color = clRed
      ParentColor = False
    end
    object mskCPF: TMaskEdit
      Left = 48
      Top = 16
      Width = 88
      Height = 21
      EditMask = '999.999.999-99;0;_'
      MaxLength = 14
      TabOrder = 0
      Text = ''
    end
    object Validar: TButton
      Left = 210
      Top = 11
      Width = 75
      Height = 28
      Caption = 'Validar'
      TabOrder = 1
      OnClick = ValidarClick
    end
  end
end
