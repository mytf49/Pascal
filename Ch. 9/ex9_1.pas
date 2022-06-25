{Check Palindrome}

program ex9_1;

var
 input: string;

function chkpali(input: string): boolean;
 var i: integer;
 begin
 i:= 1;
 chkpali:= false;
 repeat
  if input[i] = input[length(input) + 1 - i]
   then begin
        chkpali:= true;
        i:= i + 1;
       end
  else chkpali:= false;
 until (i = length(input)) or (chkpali = false);
 end;

begin

write('Enter a word: '); readln(input);

if chkpali(input) = true
 then writeln('It is a palindrome!')
 else writeln('It is not a palindrome!');
 
end.