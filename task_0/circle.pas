{3. Даны координаты центра и радиус круга. Определите, лежит ли точка с заданными координатами внутри круга (все значения вещественные).}
program circle;

var
  x, y, a, b, r, equation: Real;

begin
  Read(x, y, a, b, r);
  equation:= sqr(x-a) + sqr(y-b);
  if equation <= sqr(r) then
    WriteLn('true')
  else
    WriteLn('false');
end.