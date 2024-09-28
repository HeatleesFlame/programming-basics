unit generator;

interface
  type
    IntegerArray =  array of int32;
  
 Function Generate(len, max_num: int32): IntegerArray;

implementation
  function Generate(len, max_num: int32) : IntegerArray;
    var
      arr: IntegerArray;
      i: int32; 
    begin
      SetLength(arr, len);
      for i:= 0 to len-1 do
        begin
          arr[i]:= random(max_num)
        end;
      Generate:= arr;
      exit;
    end;


  initialization
   Randomize();
end.