program test;

uses generator;
var
  arr: array of int32;
  i: int16;
begin
  arr:= generator.Generate(10, 10);
  for i:= 1 to 10 do
    begin
      WriteLn(arr[i]);
    end;
end.