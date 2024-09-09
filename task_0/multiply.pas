{1. Даны 2 целых числа. Вычислите их произведение.}
program multiply;
var
 a, b: integer;
 res: LongInt;
begin
    read(a, b);
    res:= a * b;
    writeln('result=', res);
end.