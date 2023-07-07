unit myInterface;

interface

type
  TTypeName = (PersonName, EnterpriseName);

  iPrototype<T> = interface
    function clone: T;
  end;

  iPerson = interface
    ['{25F8371D-4B98-4C07-8782-65B1D558FD99}']
    function setName(name:string): iPerson;
    function setOrder(order:string): iPerson;
    function GetOrder(): string;
    function Prototype: iPrototype<iPerson>;
  end;

  iClassFactory = interface
    ['{2C911F93-2C10-4647-87B2-387F6A28A81B}']
    function GetName(TypeName:TTypeName): iPerson;
  end;



implementation

end.
