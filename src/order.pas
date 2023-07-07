unit order;

interface

uses
  myInterface;

type
  TOrder = class(TInterfacedObject, iOrder)
    Forder: string;
    public
      function orderWrite(): string;
    constructor Create(order: string);
  end;

implementation

{ TNota }

constructor TOrder.Create(order: string);
begin
  Forder := order;
end;

function TOrder.orderWrite: string;
begin
  Result := Forder;
end;

end.
