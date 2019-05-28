unit cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.Imaging.jpeg, Vcl.ComCtrls,
  Vcl.Samples.Gauges, Vcl.Menus;

type
  TfCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    lblMsg: TLabel;
    btnClique: TButton;
    mmObs: TMemo;
    TrayIcon1: TTrayIcon;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    aba2: TTabSheet;
    aba3: TTabSheet;
    aba4: TTabSheet;
    grbOpcoes: TGroupBox;
    chkHabilita: TCheckBox;
    stkCep: TStaticText;
    Pg1: TProgressBar;
    mskCep: TMaskEdit;
    Label1: TLabel;
    edtNome: TEdit;
    rdbHabilita: TRadioButton;
    rdbDesabilita: TRadioButton;
    SpeedButton1: TSpeedButton;
    DateTimePicker1: TDateTimePicker;
    rdgOpcoes: TRadioGroup;
    Gauge2: TGauge;
    StatusBar2: TStatusBar;
    Timer1: TTimer;
    Image1: TImage;
    ComboBox1: TComboBox;
    btnSair: TButton;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Cliente1: TMenuItem;
    Produtos1: TMenuItem;
    Vendedores1: TMenuItem;
    Cidades1: TMenuItem;
    ipoNotaFiscal1: TMenuItem;
    Vendas1: TMenuItem;
    Relatorios1: TMenuItem;
    Calculadora1: TMenuItem;
    Sair1: TMenuItem;
    Grupo1: TMenuItem;
    Subgrupo1: TMenuItem;
    Produto1: TMenuItem;
    Relatorio1: TMenuItem;
    Balanco1: TMenuItem;
    ProdVendidos1: TMenuItem;
    ProdparaCompra1: TMenuItem;
    ProdparaCompra2: TMenuItem;
    Representante1: TMenuItem;
    ConsFinal1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Estados1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure btnCliqueClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtNomeClick(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure edtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure mmObsClick(Sender: TObject);
    procedure chkHabilitaClick(Sender: TObject);
    procedure rdbHabilitaClick(Sender: TObject);
    procedure rdbDesabilitaClick(Sender: TObject);
    procedure rdgOpcoesClick(Sender: TObject);
    procedure mskCepExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCliente: TfCliente;
  x: string;  // defini��o de variaveis globais utilizaveis
              // em toda aplica��o

implementation

{$R *.dfm}

uses produtos1;

procedure TfCliente.btnCliqueClick(Sender: TObject);
begin
{ if btnClique.Enabled then
   btnClique.Enabled:=False;
}
 btnClique.Left:=Random(120);
 btnClique.Top :=Random(234);

end;

procedure TfCliente.btnSairClick(Sender: TObject);
begin
               x:='O melhor...';
               x:=x+'hugo';
               ShowMessage('boa noite...'+x);

               Application.Terminate;
end;

procedure TfCliente.Calculadora1Click(Sender: TObject);
begin
      winexec('calc.exe',SW_SHOW);
end;

procedure TfCliente.chkHabilitaClick(Sender: TObject);
begin
  if chkHabilita.Checked then
   begin
     mmObs.Visible:=True;
   end
  else
   begin
     mmObs.Visible:=False;
   end;

end;

procedure TfCliente.ComboBox1Select(Sender: TObject);
begin
  edtNome.Text:=ComboBox1.Text;
end;

procedure TfCliente.edtNomeClick(Sender: TObject);
begin

//         edtNome.Clear;
// ou
         edtNome.Text:='';
end;

procedure TfCliente.edtNomeExit(Sender: TObject);
begin
   if (Trim(edtNome.Text)='') then
    begin
     lblMsg.Caption:= 'preenchimento do campo � obrigat�rio!!';
     ShowMessage('preenchimento do campo � obrigat�rio!!');
     edtNome.SetFocus;
     lblMsg.Caption:='Mensagem:';
    end;

end;

procedure TfCliente.edtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key in['0'..'9','a'..'z','A'..'Z',' ',Chr(8)]) then
   begin
    Key:= #0
   end;
end;

procedure TfCliente.FormClick(Sender: TObject);
var
 x: integer; // definicao de variavel local... s� pode ser usada
             // dentro da procedure
begin
 x:=1000;
 ShowMessage('Ol� Mundo...'+IntToStr(x) );
end;

procedure TfCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        x:=x+'hugo, o Melhor de Todos e Mais Humilde!!!';
        ShowMessage('boa noite...'+x);

end;

procedure TfCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ((ssAlt in Shift) and (Key = VK_F4)) then
  begin
   Key := 0;
   ShowMessage('A��o N�O Permitida...');
  end;
 if (Key = VK_ESCAPE) then
//  Application.Terminate;
  close;
end;

procedure TfCliente.FormShow(Sender: TObject);
begin
    x:='';
    ShowMessage(' a variavel x foi zerada...');
    btnClique.Enabled:=True;
    edtNome.SetFocus;
end;

procedure TfCliente.mskCepExit(Sender: TObject);
begin
 if Length (Trim(Copy(mskCep.Text,1,5)))< 5 then
  begin
    ShowMessage ('Preenchimento do 1� bloco do Cep � Obrigat�rio!!! Verifique');
    mskCep.SetFocus;
  end;

 if Length (Trim(Copy(mskCep.Text,6,3)))< 3 then
  begin
    ShowMessage ('Preenchimento do 2� bloco do Cep � Obrigat�rio!!! Verifique');
    mskCep.SetFocus;
  end;

{if Trim (Copy(mskCep.Text, 1, 5))='' then
  begin
    ShowMessage ('Preenchimento do Cep � Obrigat�rio!!! Verifique');
    mskCep.SetFocus;
  end; }
end;

procedure TfCliente.Produto1Click(Sender: TObject);
begin
fProduto.ShowModal;
end;

procedure TfCliente.mmObsClick(Sender: TObject);
begin
 mmObs.Lines.Clear;
 mmObs.Lines.Add('hugo, o mais lindo '  +
                 'de todos no universo...');


end;

procedure TfCliente.rdbDesabilitaClick(Sender: TObject);
begin
mmObs.Visible:=false;
end;

procedure TfCliente.rdbHabilitaClick(Sender: TObject);
begin
  mmObs.Visible:=true;
end;

procedure TfCliente.rdgOpcoesClick(Sender: TObject);
begin
if rdgOpcoes.ItemIndex=0 then
mmObs.Visible:=true;

if rdgOpcoes.ItemIndex=1 then
mmObs.Visible:=false;

end;

procedure TfCliente.Sair1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TfCliente.SpeedButton1Click(Sender: TObject);
begin
  while Pg1.position<101 do
    begin
      Pg1.position:=Pg1.position+1;
      sleep(1000);
    end;
end;

procedure TfCliente.Timer1Timer(Sender: TObject);
begin
  Statusbar2.Panels[3].Text:='Data/Hora: '
  + DateToStr(Date)
  +' / '
  + TimeToStr(Time);
end;

end.
