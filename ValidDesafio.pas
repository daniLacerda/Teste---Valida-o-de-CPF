unit ValidDesafio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls;

type
  TfrmValidacao = class(TForm)
    mskCPF: TMaskEdit;
    Label1: TLabel;
    Validar: TButton;
    mem1Conta: TMemo;
    mem2Conta: TMemo;
    lblCPF: TLabel;
    pnlMemo: TPanel;
    pnlCPF: TPanel;
    procedure ValidarClick(Sender: TObject);
  private

  
    { Private declarations }
  public
    { Public declarations }
  end;

var
_RestoResultVal1 : Integer;

_Validador1 : Integer;
_Validador2 : Integer;

  frmValidacao: TfrmValidacao;

implementation

{$R *.dfm}


procedure TfrmValidacao.ValidarClick(Sender: TObject);
var
CPF : Array[1..11] of String;
_NumeroCPF : String;
_SomaVal1 : Integer;
_DivisaoVal1 : Integer;
_RestoVal1 : Integer;

_SomaVal2 : Integer;
_DivisaoVal2 : Integer;
_RestoVal2 : Integer;
_RestoResultVal2 : Integer;



_Digito1 : String;
_Digito2 : String;
_Digito3 : String;
_Digito4 : String;
_Digito5 : String;
_Digito6 : String;
_Digito7 : String;
_Digito8 : String;
_Digito9 : String;
_Digito10 : String;
_Digito11 : String;


_Mult1 : Integer;
_Mult2 : Integer;
_Mult3 : Integer;
_Mult4 : Integer;
_Mult5 : Integer;
_Mult6 : Integer;
_Mult7 : Integer;
_Mult8 : Integer;
_Mult9 : Integer;
_Mult10 : Integer;

begin
_NumeroCPF := mskCPF.Text;

if Length(mskCPF.Text) = 11 then
 begin
 _Digito1 := (copy(_NumeroCPF,1,1));
 _Digito2 := (copy(_NumeroCPF,2,1));
 _Digito3 := (copy(_NumeroCPF,3,1));
 _Digito4 := (copy(_NumeroCPF,4,1));
 _Digito5 := (copy(_NumeroCPF,5,1));
 _Digito6 := (copy(_NumeroCPF,6,1));
 _Digito7 := (copy(_NumeroCPF,7,1));
 _Digito8 := (copy(_NumeroCPF,8,1));
 _Digito9 := (copy(_NumeroCPF,9,1));
 _Digito10 := (copy(_NumeroCPF,10,1));
 
 //------ Calculo do PRIMEIRO Dígito Verificador
 _Mult1 := StrToInt(_Digito1) * 10 ;
 _Mult2 := StrToInt(_Digito2) * 9 ;
 _Mult3 := StrToInt(_Digito3) * 8 ;
 _Mult4 := StrToInt(_Digito4) * 7 ;
 _Mult5 := StrToInt(_Digito5) * 6 ;
 _Mult6 := StrToInt(_Digito6) * 5 ;
 _Mult7 := StrToInt(_Digito7) * 4 ;
 _Mult8 := StrToInt(_Digito8) * 3 ;
 _Mult9 := StrToInt(_Digito9) * 2 ;

 _SomaVal1 :=  (_Mult1 + _Mult2 + _Mult3 + _Mult4 + _Mult5 + _Mult6 + _Mult7 + _Mult8 + _Mult9);
 _DivisaoVal1 := (_SomaVal1 div 11);
 _RestoVal1 :=(_SomaVal1 mod 11);
 _RestoResultVal1 := (11 - _RestoVal1);

 if _RestoResultVal1 >9 then

   _Validador1 := 0
 else
  _Validador1 := StrToInt(_Digito10);


 mem1conta.Lines.Add(IntToStr(_Mult1)+ '.' + IntToStr(_Mult2)+ '.' + IntToStr(_Mult3)+ '.' + IntToStr(_Mult4)+ '.' +
 IntToStr(_Mult5)+ '.' + IntToStr(_Mult6)+ '.' + IntToStr(_Mult7)+ '.' + IntToStr(_Mult8)+ '.' +IntToStr(_mult9)) ;
 mem1conta.Lines.Add(IntToStr(_SomaVal1) +' - ' + IntToStr(_DivisaoVal1)+' - ' + IntToStr(_RestoVal1));
 mem1conta.Lines.Add(IntToStr(_RestoResultVal1));

 end;


if Length(mskCPF.Text) = 11 then
 begin
 _Digito1 := (copy(_NumeroCPF,1,1));
 _Digito2 := (copy(_NumeroCPF,2,1));
 _Digito3 := (copy(_NumeroCPF,3,1));
 _Digito4 := (copy(_NumeroCPF,4,1));
 _Digito5 := (copy(_NumeroCPF,5,1));
 _Digito6 := (copy(_NumeroCPF,6,1));
 _Digito7 := (copy(_NumeroCPF,7,1));
 _Digito8 := (copy(_NumeroCPF,8,1));
 _Digito9 := (copy(_NumeroCPF,9,1));
 _Digito10 := (copy(_NumeroCPF,10,1));
 _Digito11 := (copy(_NumeroCPF,11,1));
 
 //------ Calculo do SEGUNDO Dígito Verificador
 _Mult1 := StrToInt(_Digito1) * 11 ;
 _Mult2 := StrToInt(_Digito2) * 10;
 _Mult3 := StrToInt(_Digito3) * 9;
 _Mult4 := StrToInt(_Digito4) * 8;
 _Mult5 := StrToInt(_Digito5) * 7;
 _Mult6 := StrToInt(_Digito6) * 6;
 _Mult7 := StrToInt(_Digito7) * 5;
 _Mult8 := StrToInt(_Digito8) * 4;
 _Mult9 := StrToInt(_Digito9) * 3;
 _Mult10 :=StrToInt(_Digito10) * 2;

 
 _SomaVal2 :=  (_Mult1 + _Mult2 + _Mult3 + _Mult4 + _Mult5 + _Mult6 + _Mult7 + _Mult8 + _Mult9);
 _DivisaoVal2 := (_SomaVal2 div 11);
 _RestoVal2 :=(_SomaVal2 mod 11);
 _RestoResultVal2 := (11 - _RestoVal2);

 if _RestoResultVal2 < 9 then
  _Validador2 := StrToInt(_Digito11)
 else
  _Validador2 := 0;

 mem2conta.Lines.Add(IntToStr(_Mult1)+ '.' + IntToStr(_Mult2)+ '.' + IntToStr(_Mult3)+ '.' + IntToStr(_Mult4)+ '.' +
 IntToStr(_Mult5)+ '.' + IntToStr(_Mult6)+ '.' + IntToStr(_Mult7)+ '.' + IntToStr(_Mult8)+ '.' +IntToStr(_mult9)) ;
 mem2conta.Lines.Add(IntToStr(_SomaVal2) +' - ' + IntToStr(_DivisaoVal2)+' - ' + IntToStr(_RestoVal2));
 mem2conta.Lines.Add(IntToStr(_RestoResultVal2));
 end;

 if (_Validador1 = StrToInt(_Digito10)) and (_Validador2 = StrToInt(_Digito11)) then

  lblCPF.Caption := '* CPF válido'
  //ShowMessage('CPF Válido')
 else
  MessageDlg('CPF Inválido!', mtError, [mbOK], 0)
  //ShowMessage('CPF Inválido');

 end;




end.
