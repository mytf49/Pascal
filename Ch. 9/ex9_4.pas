{Generate Password with Alphanumeric Characters}

program ex9_4;

function chkuc(pw: string): boolean;
 var a: integer;
 begin
 a:= 1;
 chkuc:= false;
 repeat
  if (pw[a] in ['A'..'Z'])
   then chkuc:= true
   else a:= a + 1;
 until (chkuc = true) or (a = 8);
 end;

function chklc(pw: string): boolean;
 var b: integer;
 begin
 b:= 1;
 chklc:= false;
 repeat
  if (pw[b] in ['a'..'z'])
   then chklc:= true
   else b:= b + 1;
 until (chklc = true) or (b = 8);
 end;

function chknum(pw: string): boolean;
 var c: integer;
 begin
 c:= 1;
 chknum:= false;
 repeat
  if (pw[c] in ['0'..'9'])
   then chknum:= true
   else c:= c + 1;
 until (chknum = true) or (c = 8);
 end;

function nosymbol(pw: string): boolean;
 var d: integer;
 begin
 d:= 1;
 nosymbol:= true;
 for d:= 1 to 8 do
  if not (pw[d] in ['A'..'Z', 'a'..'z', '0'..'9'])
   then nosymbol:= false;
 end;

var
 i: integer;
 pw: string;

begin

randomize;

pw:= '        ';

while (chkuc(pw) <> true) or (chklc(pw) <> true) or (chknum(pw) <> true) or (nosymbol(pw) <> true) do
 begin
 for i:= 1 to 8 do
  pw[i]:= chr(random (122 - 48) + 48);
 end;

writeln(pw);

end.