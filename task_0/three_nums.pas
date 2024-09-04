{2. Даны 3 числа. Выведите числа в порядке возрастания.}
program three_nums;

var a, b, c, tmp: integer;

begin
  Read(a, b, c);

  if a > b then
  begin
    tmp:= b;
    b:= a;
    a:= tmp;
  end;

  if b > c then
  begin
    tmp:= c;
    c:= b;
    b:= tmp;
  end;

  if a > b then
  begin
    tmp:= b;
    b:= a;
    a:= tmp;
  end;


  WriteLn(a,' ', b, ' ', c, ' ')
end.