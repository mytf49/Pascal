{4D08 Yip Tsz Fung, 2021/04/15, ex5_2}
{This program calculates quadratic equations}

program ex5_3;

var
 a, b, c: integer;
 d, ans1, ans2: real;

begin

writeln('Solving Quadratic Equation');
write('Enter the cofficients: ');
readln(a, b, c);

d:= sqr(b) - 4 * a * c;

if a = 0
 then writeln('This is not a quadratic equation.')
 else if d < 0
       then writeln('No real root.')
       else
        begin
         ans1:= (0 - b + sqrt(d)) / (2 * a);
         ans2:= (0 - b - sqrt(d)) / (2 * a);
         if ans1 = ans2
          then writeln('Double roots, x = ', ans1:0:2)
          else writeln('Two real roots, x = ', ans1:0:2, ', ', ans2:0:2);
        end;
end.