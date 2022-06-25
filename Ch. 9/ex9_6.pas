{Display Scrolling Text}

program ex9_6;

var
 i: integer;
 input: string;

procedure scroll(var input: string);
 var
  fstchar: char;
  remainchar: string;
 begin
 fstchar:= input[1];
 remainchar:= copy(input, 2, length(input) - 1);
 input:= '';
 input:= remainchar + fstchar;
 end;

begin

write('Enter an string: '); readln(input);

for i:= 1 to length(input) do
 begin
 scroll(input);
 writeln(input);
 end;

end.