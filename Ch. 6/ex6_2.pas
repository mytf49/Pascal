{4D08 Yip Tsz Fung, 2021/04/29, ex6_2}
{This program finds the HCF of two integers}

program ex6_2;

var
 num1, num2, hcf, sno, i: integer;

begin

write('Enter the first integer: ');
readln(num1);
write('Enter the second integer: ');
readln(num2);

if num1 > num2
 then sno:= num2
 else sno:= num1;
for i:= 1 to (sno) do
 begin
 if ((num1 mod i = 0) and (num2 mod i = 0))
  then hcf:= i;
 end;

writeln('The H.C.F. is ', hcf);

end.