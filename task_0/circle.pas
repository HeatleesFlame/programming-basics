{3. Даны координаты центра и радиус круга. Определите, лежит ли точка с заданными координатами внутри круга (все значения вещественные).}
program circle;

var
  x, y, a, b, r: Real;

begin
  read(x, y, a, b,  r);
  if sqr(a-x) + Sqr(b-y) <= sqr(r) then
    WriteLn('true')

  else
    WriteLn('false');
end.
