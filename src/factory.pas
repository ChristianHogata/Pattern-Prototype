unit factory;

interface

uses
  myInterface;

type
  Tfactory = class(TInterfacedObject, iClassFactory)
  public
      function GetName(TypeName:TTypeName): iPerson;
  end;

implementation

uses
  person, enterprise;

{ factory }

function Tfactory.GetName(TypeName: TTypeName): iPerson;
begin
  case TypeName of
    PersonName: Result := TPerson.create;
    EnterpriseName: Result := Tenterprise.Create;
  end;

end;


end.
