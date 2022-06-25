{Yip Tsz Fung 5D07}
{Display Prime Number between 2 and 100}

program ex7_1;

var num: integer;

procedure CheckPrime(i: integer);
 var 
  j: integer;
  Prime: boolean;
 begin
  j:= 2;
  Prime:= true;
  while j < num do
   begin
    if i mod j = 0
     then Prime:= false;
   j:= j + 1;
   end;
 if Prime then write(i, ' ');
 end;

begin

for num:= 2 to 100 do
 CheckPrime(num);

end.