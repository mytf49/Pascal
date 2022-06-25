{4D08 Yip Tsz Fung, 2021/03/25, ex3_2}
{This program shows the corresponding offset character}

program ex3_2;

var c, c2: char;
int: integer;

begin

write('Enter a character: ');
readln(c);
write('Enter an integer: ');
readln(int);

c2:= chr((ord(c)) + int);

writeln(int, ' characters after ', c, ' is ', c2);

end.