unit time;

interface

uses
 Sysutils;

procedure Start();
procedure Stop();

implementation
{we can add ticks meashurement if needed}
var
  startTime, endTime,
  takenTime: TDateTime;
  HH, MM, SS, MS: Word;

procedure Start();
begin
  startTime:= Now();
end;

procedure Stop();
begin
  endTime:= now();
  takenTime:= endTime - startTime;
  DecodeTime(takenTime, HH, MM, SS, MS);
  WriteLn(MS, ' milliseconds taken for execution');
end;
end.
