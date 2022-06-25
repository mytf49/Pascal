{4D08 Yip Tsz Fung, 2021/04/15, ex5_1}
{This program displays the largest integer}

program ex5_1;

var num1, num2, num3, gno: integer;

begin

write('Enter three integers: ');
readln(num1, num2, num3);

gno:= num1;
if (num2 > gno) then gno:= num2;
if (num3 > gno) then gno:= num3;

writeln('The greatest number is ', gno);

end.