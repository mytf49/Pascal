{4D08 Yip Tsz Fung, 2021/04/16, ex5_4}
{This program converts denary to binary}

program ex5_4;

var
 num: integer;
 b1, b2, b3, b4: char;

begin

b1:= '0';
b2:= '0';
b3:= '0';
b4:= '0';

writeln('Convert Decimal to Binary');
write('Enter an integer (0 to 15): ');
readln(num);

if (num >= 0) and (num <= 15)
then begin
     if num >= 8
     then begin
          b1:= '1';
          num:= num - 8
          end;
     if num >= 4
     then begin
          b2:= '1';
          num:= num - 4
          end;
     if num >= 2
     then begin
          b3:= '1';
          num:= num - 2
          end;
     if num >= 1
     then b4:= '1';
     writeln('Binary equivalent is ', b1, b2, b3, b4)
     end
else writeln('Invalid number!')

end.