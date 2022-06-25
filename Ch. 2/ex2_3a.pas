{4D08 Yip Tsz Fung, 2021/02/26, ex2_3a}
{This program shows the tenth and unit digit of a two-digit number}

program ex2_3a;

var num, tend, unitd: integer;

begin

write('Enter a two-digit number: ');
read(num);

tend:= num div 10;
unitd:= num mod 10;

writeln('The tenth digit is ', tend, '.');
writeln('The unit digit is ', unitd, '.');

end.