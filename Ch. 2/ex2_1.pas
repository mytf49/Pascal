{4D08 Yip Tsz Fung, 2021/02/26, ex2_1}
{This program shows the operation of two integers}

program ex2_1;

var num1, num2: integer;

begin

write('Enter an integer: ');
readln(num1);
write('Enter another integer: ');
readln(num2);

writeln('');
writeln(num1, ' + ', num2, ' = ', num1 + num2);
writeln(num1, ' - ', num2, ' = ', num1 - num2);
writeln(num1, ' * ', num2, ' = ', num1 * num2);
writeln(num1, ' div ', num2, ' = ', num1 div num2);
writeln(num1, ' mod ', num2, ' = ', num1 mod num2);

end.