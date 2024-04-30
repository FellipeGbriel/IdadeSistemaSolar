unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, System.Math;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBoxEx1: TComboBoxEx;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

var

Segundos : Integer;

AnosTerra : Double;

AnosPlaneta : Double;


begin
  // Inicialização das variaveis

  Segundos := 0;
  AnosTerra := 0;
  AnosPlaneta := 0;

  // Calculando Idade terrestre

  try

    Segundos := StrtoInt(Edit1.Text);

  except

    ShowMessage('Digite um número válido');

  end;

  if Segundos > 0 then
  begin

    AnosTerra := Segundos / 31557600;

  end;

  // Calculando a idade planetária

  if AnosTerra > 0 then
  begin

    case ComboBoxEx1.ItemIndex of

    0 : AnosPlaneta := 1;
    1 : AnosPlaneta := 0.2408467;
    2 : AnosPlaneta := 0.61519726;
    3 : AnosPlaneta := 1.8808158;
    4 : AnosPlaneta := 11.862615;
    5 : AnosPlaneta := 29.447498;
    6 : AnosPlaneta := 84.016846;
    7 : AnosPlaneta := 164.79132;

    end;

    AnosPlaneta := AnosTerra / AnosPlaneta;

    AnosPlaneta := RoundTo(AnosPlaneta, -2);

    ShowMessage('Você tem ' + FloattoStr(AnosPlaneta) + ' anos de idade.');



  end;

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
 ComboBoxEx1.ItemIndex := 0;
end;

end.
