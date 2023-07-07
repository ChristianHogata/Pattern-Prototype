unit enterprise;

interface

uses
  myInterface;

type
  Tenterprise = class(TInterfacedObject, iPerson, iPrototype<iPerson>)
    private
      Fname: string;
      Forder : string;
      class var Finstance: Tenterprise;
      function setName(name:string): iPerson;
      function setOrder(order:string): iPerson;
      function GetOrder(): string;
      function Prototype: iPrototype<iPerson>;
      function clone: iPerson;
    public
  end;

implementation

{ Tenterprise }

function Tenterprise.clone: iPerson;
begin
  Result := Tenterprise.Create;
  Result.setName(Fname);
  Result.setOrder(Forder);
end;

function Tenterprise.GetOrder: string;
begin
    Result := Fname + ' LTDA' + ' ' + Forder;
end;

function Tenterprise.Prototype: iPrototype<iPerson>;
begin
  Result := Self;
end;

function Tenterprise.setName(name: string): iPerson;
begin
  Result := Self;
  Fname := name;
end;

function Tenterprise.setOrder(order: string): iPerson;
begin
   Result := Self;
   Forder := order;
end;

end.
