{4D08 Yip Tsz Fung, 2021/03/25, ex3_1}
{This program shows the analysis of a circle}

program ex3_1;

var r, area, cir: real;

begin

writeln('Analysis of Circle');
write('Input the radius: ');
read(r);

area:= pi*sqr(r);
cir:= 2*pi*r;

writeln;
writeln('Area of circle: ', area:0:2);
writeln('Circumference of circle: ', cir:0:2);

end.