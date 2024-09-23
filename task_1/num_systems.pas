program num_systems;

uses
  Math;

const
 max_int32: int32 = 2147483647;

var
  new_num_len: int32; 
  i, n: int16;
  base_old: int16;
  base_new: int16;
  max_int: array [1..32] of int32;
  number_old: array [1..32] of int32;
  number_new: array [1..32] of int32;
  r: int32;

begin
  
  WriteLn('Enter the current basement... '); Read(base_old);

  WriteLn('Enter amount of digits in number...'); Read(n);
  if n > 32 then
  begin
    WriteLn('Incorrect lenght of number');
    exit;
  end;
  
  WriteLn('enter digits...');
  for i:= n downto 1 do
  begin
    read(number_old[i]);
    if (number_old[i] < 0) or (number_old[i] >= base_old) then
    begin
      WriteLn('incorrect input, digit can not be greater than basement or negative');
      exit;    
    end;     
  end;

  WriteLn('enter new basement...'); 
  Read(base_new);
  if base_new < 2 then
  begin
    WriteLn('incorrect base');
    exit;
  end;

  WriteLn('digits of new number:');

  i:= 1;
  r:= max_int32;
  while  r > 0 do
    begin
      max_int[i]:= r mod base_old;
      r:= r div base_old;
      inc(i);
    end;
  
  n:= 0;
  for i:= 32 downto 1 do
    begin
      if (max_int[i] > number_old[i]) then inc(n);
      if (n = 0) and (max_int[i] < number_old[i]) then
        begin
          WriteLn('this number cant be represented on this cpu');
          exit();
        end; 
    end;
  
  r:= 0;
  for i:= 64 downto 1 do
    begin
      r:= r * base_old + number_old[i];
    end;
  new_num_len:= Round(Math.LogN(base_new, r));
  
  i:= 1;
  while r > 0 do
    begin
      number_new[i]:= r mod base_new;
      r:= r div base_new;
      inc(i);
    end;
 
 for i:=new_num_len + 1 downto 1 do
   begin
     WriteLn(number_new[i]);
   end;
end.