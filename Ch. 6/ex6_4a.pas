{4D08 Yip Tsz Fung, 2021/04/29, ex6_4a}
{This program shows the hailstone sequence of an integer}

program ex6_3;

var
 onum, num, i: integer;

begin

writeln('Hailstone sequence');
write('Enter an integer (1-100): ');
readln(num);

onum:= num;
i:= 0;

if (num >= 1) and (num <= 100)
 then repeat
       i:= i + 1;
       if (num mod 2) = 0
        then begin
             num:= (num div 2);
             if num >= 10
              then begin 
                   if i = 1
                    then write(onum, num:3)
                    else write(num:3)
                   end
              else write(num:2);
             end
        else begin
             num:= (3 * num) + 1;
             if num >= 10
              then
                   if i = 1
                    then write(onum, num:3)
                    else write(num:3)
              else write(num:2);
             end
      until num = 1;

end.