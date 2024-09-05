{5.  Поменяйте местами последний максимальный и первый минимальный элемент массива и выведите весь массив.}
program arrays;

var
    arr:array [0..4] of Integer;
    min_index,
    max_index,
    min,
    max,
    i,
    num: Integer;

begin

  for i := 0 to 4 do
    read(arr[i]);

  min:= arr[0];
  max:= arr[0];

  for i := 0 to 4 do
    begin
    if arr[i] < min then
    begin
      min:= arr[i];
      min_index:= i;
    end;
  
    if arr[i] >= max then
      begin
        max:= arr[i];
        max_index:= i;  
      end;
    end;
      
  arr[min_index]:= max;
  arr[max_index]:= min;

  for num in arr do
    Write(num, ' ');
  
end.