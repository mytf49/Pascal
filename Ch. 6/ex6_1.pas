{4D08 Yip Tsz Fung, 2021/04/16, ex6_1}
{This program shows the grade until 'Z' is entered}

program ex6_1;

var
 grade: char;
 nograde, nocredit, nopass, nofail: integer;

begin

nograde:= 0;
nocredit:= 0;
nopass:= 0;
nofail:= 0;

write('Enter a grade (A-F, Z to end): ');
readln(grade);

while (grade <> 'Z') do
 begin
 nograde:= nograde + 1;
 if ((grade <= 'C') and (grade >= 'A'))
  then nocredit:= nocredit + 1;
 if ((grade >= 'A') and (grade <= 'E'))
  then nopass:= nopass + 1;
 if (grade = 'F')
  then nofail:= nofail + 1;
 write('Enter a grade (A-F, Z to end): ');
 readln(grade);
 end;

writeln('Number of credit = ', nocredit, ' (', (nocredit/nograde * 100):0:1, '%)');
writeln('Number of pass = ', nopass, ' (', (nopass/nograde * 100):0:1, '%)');
writeln('Number of fail = ', nofail, ' (', (nofail/nograde * 100):0:1, '%)');

end. 