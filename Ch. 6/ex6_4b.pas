{4D08 Yip Tsz Fung, 2021/04/30, ex6_4b}
{This program if an integer in a range reaches the final value of 1 by hailstone sequence}

program ex6_4b;

var
 sno, lno, i: integer;

begin

write('Enter the range of integers to be tested: ');
readln(sno, lno);

i:= sno;

repeat
 repeat
 if (i mod 2) = 0
  then i:= i div 2
  else i:= i * 3 + 1;
 until i = 1;
if i = 1
 then writeln(sno, ' is OK');
sno:= sno + 1;
until sno = (lno + 1);

end.