{Return Initals}

program ex9_5;

var
 iname, surname, i1, i2, temp: string;
 i, noSpace: integer;
 
begin

write('Enter your name: '); readln(iname);

noSpace:= 0;

for i:= 1 to length(iname) do
 if iname[i] = ' '
  then noSpace:= noSpace + 1;

if noSpace = 1
 then begin
      surname:= copy(iname, 1, pos(' ', iname) - 1);
      i1:= copy(iname, pos(' ', iname) + 1, 1);
      end
 else begin
      surname:= copy(iname, 1, pos(' ', iname) - 1);
      i1:= copy(iname, pos(' ', iname) + 1, 1);
      temp:= copy(iname, pos(' ', iname) + 1, length(iname));
      i2:= copy(temp, pos(' ', temp) + 1, 1);
      end;

if noSpace = 1
 then writeln('Your initials (with surname) are ', i1, '. ', surname)
 else writeln('Your initials (with surname) are ', i1, '.', i2, '. ', surname);

end.