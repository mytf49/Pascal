{4D08 Yip Tsz Fung, 2021/03/26, ex3_5}
{This program converts Celsius to Fahrenheit}

program ex3_5;

var C, f: real;

function Fahrenheit(c: real): real;
 begin
 f:= (9/5) * c + 32;
 end;

begin

writeln('Celsius to Fahrenheit');
write('Enter a temperature in degree Celsius: ');
readln(c);

writeln(c:0:2, ' degrees Celsius is equal to ', Fahrenheit(c):0:2, ' degrees F');

end.