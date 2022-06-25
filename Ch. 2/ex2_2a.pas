{4D08 Yip Tsz Fung, 2021/02/26, ex2_2a}
{This program converts feet and inches to cm}

program ex2_2a;

var ft, inch: integer;
cm: real;

begin

write('Enter your height (feet inches): ');
readln(ft, inch);

cm:= (ft * 12 + inch) * 2.54;

writeln('You are ', cm:0:2, ' cm tall.');

end.