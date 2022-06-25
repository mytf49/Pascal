{4D08 Yip Tsz Fung, 2021/02/26, ex2_4}
{This program calculate the number needed for large tables(6) and small tables(2)}

program ex2_4;

var num, lt, st, remain: integer;

begin

write('Enter the number of customers: ');
read(num);

lt:= num div 6;
remain:= num mod 6;
    if remain mod 2 <> 0 then
        st:= remain div 2 + 1
    else
        st:=remain div 2;

writeln('Large table required: ', lt);
writeln('Small table required: ', st);

end.