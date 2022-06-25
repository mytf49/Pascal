{4D08 Yip Tsz Fung, 2021/03/26, ex3_6}
{This program check if an integer is a perfect square}

program ex3_6;

var i: integer;

function IsSquare(i: integer): boolean;
 begin
 if sqrt(i) = Trunc(sqrt(i)) then
  IsSquare:= TRUE
 else
  IsSquare:= FALSE;
 end;

begin

write('Enter an integer: ');
readln(i);

writeln('Is ', i, ' a perfect square? ', IsSquare(i));

end.