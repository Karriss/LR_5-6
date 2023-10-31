const N = 15;
var
    a: array[1..N] of byte;
    i, k, num, f , max: byte;
begin
    randomize;
    for i:=1 to N do begin
        a[i] := random(20);
        write(a[i],' ');
    end;
    writeln;

    num := a[1];
    max := 1;
    for i:=1 to N-1 do begin
        f := 1;
        for k:=i+1 to N do
            if a[i] = a[k] then 
                f := f + 1;
        if f > max then begin
            max := f;
            num := a[i];
        end;
    end;

    if max > 1 then
        writeln(max, ' раз(а) встречается число ', num)
    else
        writeln('Все элементы уникальны!');
end.