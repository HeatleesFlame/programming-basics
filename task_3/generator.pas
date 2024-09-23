unit generator;

interface
 function Generate: Int64;
implementation

  function Generate(len, max_num: int32) : array of int32;
    var
      arr: array of int32;
      i: int32; 
    begin
      SetLength(arr, len);
      for i:= 1 to len do
        begin
          arr[i]:= random(max_num)
        end;
    end;

  initialization
   Randomize();
end.