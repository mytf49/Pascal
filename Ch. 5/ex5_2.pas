{4D08 Yip Tsz Fung, 2021/04/15, ex5_2}
{This program is a calculator}

program ex5_2;

var num1, num2, cho: integer;

begin

writeln('1. Addition');
writeln('2. Substraction');
writeln('3. Multiplication');
writeln('4. Division');
writeln('');
write('Enter your choice: ');
readln(cho);

if (cho > 0) and (cho < 5)
 then
  begin
   write('Enter two numbers: ');
   readln(num1, num2);
   if (cho = 1)
   then writeln(num1, ' + ', num2, ' = ', num1 + num2)
   else if (cho = 2)
        then writeln(num1, ' - ', num2, ' = ', num1 - num2)
        else if (cho = 3)
             then writeln(num1, ' * ', num2, ' = ', num1 * num2)
             else writeln(num1, ' / ', num2, ' = ', (num1 / num2):0:3)
  end
 else writeln('Invalid choice! Bye!');

end.