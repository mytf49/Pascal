{4D08 Yip Tsz Fung, 2021/03/25, ex3_3}
{This program choose 3 random answers for multiple choice questions}

program ex3_3;

var a1, a2, a3: char;

begin

writeln('Random Guess');
writeln;

randomize;
a1:= chr(random(69 - 65) + 65);
a2:= chr(random(69 - 65) + 65);
a3:= chr(random(69 - 65) + 65);

writeln('MC answer 1 = ', a1);
writeln('MC answer 2 = ', a2);
writeln('MC answer 3 = ', a3);

end.