{4D08 Yip Tsz Fung, 2021/04/29, ex6_3}
{This program check if a positive integer is a prime number}

program ex6_3;

var
 num, i: integer;
 chkprime: boolean;

begin

write('Enter a positive integer: ');
readln(num);

while (num <= 0) do
 begin
 write('Enter a positive integer: ');
 readln(num);
 end;
 
chkprime:= TRUE;

for i:= 2 to (num - 1) do
 begin
 if (num mod i) = 0
  then chkprime:= FALSE;
 end;

if (chkprime = TRUE) and (num <> 1)
 then writeln(num, ' is a prime number')
 else writeln(num, ' is not a prime number');

end.