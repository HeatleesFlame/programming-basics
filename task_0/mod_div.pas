{4. Без деления найдите целую часть частного и остаток от деления двух заданных целых чисел.}
program mod_div;

var
  a, b, div_res: LongInt;

begin
  div_res:= 0;
  read(a, b);
  while a >= b do
  begin
     div_res:= div_res + 1;
     a:= a - b;
     WriteLn(a,' ', div_res)    
  end;
  
  WriteLn(div_res, ' ', a);
end.

