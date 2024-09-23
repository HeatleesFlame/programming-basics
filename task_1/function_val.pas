{recursion: a_i = (-(a_i-1)/(k-1))*x*k}
program function_val;

var
  f: real;
  output_file: TextFile; 
  a, precision, sum: Real;
  start, finish, step: Real;
  k: int32;
begin
  Read(start);
  Read(finish);
  step:= abs(finish-start)/9;
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
        while abs(a) >= precision do
        begin
          inc(k);
          a:= ((-a/(k-1))*start*k);
          sum:= sum + a;
        end;
        WriteLn(output_file, 'x= ', start:3:1,' ', 'value= ', sum:7:6, ' ', 'iterations= ', k);
        precision:= precision/10;
      end;
      f:= 1/((start+1)*(start+1));
      WriteLn(output_file,'check=  ', f :8:6);
      start:= start + step;
    end;
  Close(output_file);
end.
