unit FormData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, myInterface,
  System.Generics.Collections;

type
  TformDt = class(TForm)
    Panel1: TPanel;
    edtName: TEdit;
    Label1: TLabel;
    btnFinish: TButton;
    ComboBox1: TComboBox;
    Label2: TLabel;
    editOrder: TEdit;
    Label3: TLabel;
    procedure btnFinishClick(Sender: TObject);
    procedure view;
  private
    ForderMemo : TMemo;
    Flist: TList<iPerson>;
    Fclone : iPerson;
    { Private declarations }
  public
    { Public declarations }
    procedure cloneData;

  constructor Create(memo:Tmemo); virtual;
  end;

var
  formDt: TformDt;

implementation

uses
  factory;

{$R *.dfm}

procedure TformDt.btnFinishClick(Sender: TObject);
begin
  try
    Flist.Add(Tfactory.Create
        .GetName(TTypeName(ComboBox1.ItemIndex))
        .setName(edtName.Text)
        .setOrder(editOrder.Text));

    view;

  finally
    edtName.Clear;
    editOrder.Clear;
  end;
end;

procedure TformDt.cloneData;
begin
  if assigned(Fclone) then
  begin
    Flist.Add(Fclone);
    view;
  end;
end;

constructor TformDt.Create(memo: Tmemo);
begin
  ForderMemo := memo;
  Flist := TList<iPerson>.Create;
end;

procedure TformDt.view;
begin
  ForderMemo.Clear;

  for var I := 0 to pred(Flist.Count) do
  begin
    Fclone := Flist[I].Prototype.clone;

    ForderMemo.Lines.Add(
      Flist[I].GetOrder
    );
  end;

end;

end.
