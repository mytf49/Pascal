{4D08 Yip Tsz Fung, 2021/02/26, ex2_2b}
{This program converts cm to feet and inches}

program ex2_2b;

var ft, inch, cm: integer;

begin

write('Enter your height (in cm): ');
read(cm);

inch:= round(cm / 2.54);
ft:= inch div 12;
inch:= inch mod 12;

writeln('You are ', ft, ' feet ', inch, ' inch(es) tall.');

end.