{Yip Tsz Fung 5D07}
{Display triangle with desired height and symbol}

program ex7_2;

var
 h: integer;
 sym: char;

procedure DrawBar (n: integer; symbol: char);
 var count: integer;
 begin
 for count:= 1 to n do
  write(symbol);
  writeln
 end;

procedure DrawTriangle (height: integer; symbol: char);
 var row: integer;
 begin
 for row:= 1 to height do
  DrawBar(row, symbol)
 end;

begin

write('Enter the height of triangle: '); readln(h);
write('Enter a character for the triangle: '); readln(sym);

DrawTriangle(h, sym)

end.