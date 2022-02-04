unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    procedure Button10Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  i:integer;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  i:=0;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  a:integer;
begin
  a:=i mod 2 ;

  if a= 0 then
  begin
    with sender as TButton do
         begin
           TButton(sender).Caption:='O';
           TButton(sender).Enabled:=false;

         end;
  end
  else
   begin
    with sender as TButton do
         begin
           TButton(sender).Caption:='X';
           TButton(sender).Enabled:=false;

         end;

end;
   inc(i);
    end;

procedure TForm1.Button10Click(Sender: TObject);
var
   i:integer;
begin
  for i:=1 to 9 do
    begin
     TButton(FindComponent('button' + inttostr(i))).Caption:='';
     TButton(FindComponent('button' + inttostr(i))).Enabled:=true;
    end;
end;

end.

