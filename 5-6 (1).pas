program z201;
const 
n = 20;
var i : integer;
   A:array[0..n-1] of integer;
begin
  for i:=0 to n-1 do begin
                     read(A[i]);
                     if A[i]>0 then A[i]:=0
                               else A[i]:=A[i]*A[i];
                     end;
  writeln;
  for i:=0 to n-1 do writeln(a[i]);
  
end.