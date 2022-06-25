{4D08 Yip Tsz Fung, 2021/02/26, ex2_5}
{This program calculates BMI value}

program ex2_5;

var wei: integer;
hei, bmi: real;

begin

write('Enter your weight (kg): ');
read(wei);
write('Enter your height (m): ');
read(hei);

bmi:= wei / sqr(hei);

writeln('Your BMI is ', bmi:0:2);

end.