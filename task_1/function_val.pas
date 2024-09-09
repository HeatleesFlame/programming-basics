program function_val;

var
  output_file: TextFile; 
  a, precision, sum: Real;
  start, finish, step: Real;
  k: int32;
begin
  step:= 0.1;
  start:= -0.1;
  finish:= 0.8;
  Assign(output_file, 'output.txt');
  Rewrite(output_file);
  while start <= finish do
    begin
    {initialize vars}
      k:= 1;
      a:= 1;
      sum:= 1;
      precision:= 1e-1;
      {cycle for precision}
      while precision >= 1e-6 do
      begin
        {cycle for sum}
        while abs(a) > precision do
        begin
          inc(k);
          a:= ((-a/(k-1))*start*k);
          sum:= sum + a;
        end;
        WriteLn(output_file, 'x= ', start:3:1,' ', 'value= ', sum:7:6, ' ', 'iterations= ', k);
        precision:= precision/10;
      end;
      start:= start + step;
    end;
  Close(output_file);
end.
