{4D08 Yip Tsz Fung, 2021/02/26, ex2_3b}
{This program shows the hundredth, tenth and unit digit of a three-digit number}

program ex2_3b;

var num, hundd, tend, unitd: integer;

begin

write('Enter a three-digit number: ');
read(num);

hundd:= num div 100;
tend:= num - hundd * 100;
num:= tend;
tend:= num div 10;
unitd:= num mod 10;

writeln('The hundredth digit is ', hundd, '.');
writeln('The tenth digit is ', tend, '.');
writeln('The unit digit is ', unitd, '.');

end.