{Yip Tsz Fung 5D07}
{Check Award}

program ex8_2a;

var
 exam, service: integer;
 conduct: char;

begin

 write('Enter the examination mark: '); readln(exam);
 write('Enter the conduct: '); readln(conduct);
 write('Enter the number of service activity: '); readln(service);

if ((exam >= 90) and (conduct = 'A')) then writeln('Outstanding Student Award');
if ((exam >= 70) and (conduct <= 'B')) then writeln('Good Performance Award');
if ((conduct <= 'B') and (service >= 10)) then writeln('Good Service Award');

end.