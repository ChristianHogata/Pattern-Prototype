unit person;

interface

uses
  myInterface;

type
  TPerson = class(TInterfacedObject, iPerson, iPrototype<iPerson>)
    private
      Fname: string;
      Forder : string;
      function setName(name:string): iPerson;
      function setOrder(order:string): iPerson;
      function GetOrder(): string;
      function clone: iPerson;
      function Prototype: iPrototype<iPerson>;
    public
  end;

implementation

{ TPessoa }



{ TPessoa }



function TPerson.clone: iPerson;
begin
  Result := TPerson.Create;
  Result.setName(Fname);
  Result.setOrder(Forder);
end;

function TPerson.GetOrder: string;
begin
     Result := Fname + ' ' + Forder;
end;

function TPerson.Prototype: iPrototype<iPerson>;
begin
  Result := Self;
end;

function TPerson.setName(name: string): iPerson;
begin
    Result := Self;
    Fname := name;
end;

function TPerson.setOrder(order: string): iPerson;
begin
   Result := Self;
   Forder := order;
end;

end.
