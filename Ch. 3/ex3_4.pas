{4D08 Yip Tsz Fung, 2021/03/26, ex3_4}
{This program converts inch to centimeter}

program ex3_4;

var cm, inch, inchtocm: real;

function Centimetre(inch: real): real;
 begin
 inchtocm:= 2.54;
 cm:= inch * inchtocm;
 end;
 
begin

writeln('Inch to cm calculator');
write('Enter a value in inch: ');
readln(inch);

writeln(inch:0:0, ' inches is equal to ', Centimetre(inch):0:2, ' cm');

end.