{1. Даны 2 целых числа. Вычислите их произведение.}
program multiply;
var a, b, res: integer;
begin
    read(a, b);
    res:= a * b;
    writeln('result=', res);
end.