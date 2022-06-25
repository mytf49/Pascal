program markprogram;

type
 CArray = array [1..20] of char;

var
 Infile: text;
 TLine: CArray;
 FName: string;
 Numchar, i: integer;

procedure rev (Numchar: integer; var line: CArray);
 var
  i: integer;
 begin
   for i:= 1 to 20 do
    write(line[20 - i]);
 end;

begin

 write('Name of the file: '); readln(Fname);
 writeln;
 assign(Infile, Fname);
 reset(Infile);
 Numchar:= 0;
 for i:= 1 to 20 do
  tLine[i] := ' ';
 writeln('Contents in reversed order: ');
 while not eof(Infile) do
  begin
   readln(Infile, tLine);
   writeln;
   rev(Numchar, tLine);
  end;
 close(Infile);
 
end. 