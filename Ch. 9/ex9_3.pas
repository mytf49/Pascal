{Check Validity of the User ID}

program ex9_3;

var ID: string;

function CheckRuleOne(ID: string): boolean;
var i, noDot: integer;
begin
i:= 1;
noDot:= 0;
CheckRuleOne:= true;

repeat
if (noDot <= 1) and ((ID[i] >= 'a') and (ID[i] <= 'z')) or ((ID[i] >= '0') and (ID[i] <= '9')) or (ID[i] = '_') or (ID[i] = '.')
 then begin
      if ID[i] = '.' then noDot:= noDot + 1;
      i:= i + 1;
      end
 else CheckRuleOne:= false;
until (i = length(ID)) or (CheckRuleOne = false);

end;

function CheckRuleTwo(ID: string): boolean;
begin
if (ID[1] >= 'a') and (ID[1] <= 'z')
 then CheckRuleTwo:= true
 else CheckRuleTwo:= false;
end;

function CheckRuleThree(ID: string): boolean;
begin
if (ID[length(ID)] <> '_') and (ID[length(ID)] <> '.')
 then CheckRuleThree:= true
 else CheckRuleThree:= false;
end;

begin

write('Enter a user ID: '); readln(ID);

if not CheckRuleOne(ID)
 then writeln('Only alphanumeric characters, underscores and one dot are allowed.');
 
if not CheckRuleTwo(ID)
 then writeln('The user ID must begin with an alphabet.');

if not CheckRuleThree(ID)
 then writeln('The user ID cannot end with an underscore or a dot.');

if CheckRuleOne(ID) and CheckRuleTwo(ID) and CheckRuleThree(ID)
 then writeln('Valid user ID!');

end.