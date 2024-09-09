program fib_seq;

var
  i, n: int32;
  sum, current, first, second: Int64;

begin
  
  read(n);
  
  if n >= 3 then
    begin

      first:= 0;
      second:= 1;
      current:= 1;
      sum:= second + current;

     for i := 3 to n-1 do
      begin

        first:= second;
        second:= current;
        current:= first + second;
        sum:= sum + current;

      end;
    Writeln(sum, ' ', current);
    end;

  case n of
    1:WriteLn('0 0');
    2:Writeln('1 1');
  end;     
end.

