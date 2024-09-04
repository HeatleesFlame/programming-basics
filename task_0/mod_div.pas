{4. Без деления найдите целую часть частного и остаток от деления двух заданных целых чисел.}
program mod_div;

var
  a, b, div_res: Integer;

begin
  div_res:= 0;
  read(a, b);
  while a > b do
  begin
     div_res:= div_res + 1;
     a:= a - b;    
  end;
  
  WriteLn(div_res, ' ', a);
end.

