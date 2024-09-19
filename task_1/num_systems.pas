program num_systems;

uses
 Math; 
var
  new_num_len: int32;
  base: int32;
  i,n: int32; 
  base_new: int32;
  t_0: int32;
  digits: array of int32;
  new_num_digits: array of int32;
  begin
    
    read(base);
    read(n);
    SetLength(digits, n);
    i:= n;
    while i >= 1 do
      begin
        read(digits[i]);
        i:= i - 1;
      end;
    read(base_new);

    t_0:= digits[n];
    i:= n-1;
    while i >= 1 do
      begin
        t_0:= t_0 * base + digits[n-1];
        i:= i - 1;
      end;
    WriteLn('decimal representation= ', t_0);

    new_num_len:= Round(Math.LogN(base_new, t_0))+1;
    SetLength(new_num_digits, new_num_len);
    WriteLn('new_num_len is ', new_num_len);

    {reverse if needed}
    for i:= 1 to new_num_len do
      begin
        Write(t_0 mod base_new, ' ');
        t_0:= t_0 div base_new;
      end;




  end.