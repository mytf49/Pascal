{Convert marks to grade and display as bar chart}

program ex10_1;

var
 count: array['A'..'F'] of integer;
 mark: array[1..10] of integer;

procedure countgrade;
 var
  ch: char;
  i: integer;
 begin
  for ch:= 'A' to 'F' do
   count[ch]:= 0;
  for i:= 1 to 10 do
   case mark[i] of
    91..100: count['A']:= count['A'] + 1;
    81..90: count['B']:= count['B'] + 1;
    71..80: count['C']:= count['C'] + 1;
    61..70: count['D']:= count['D'] + 1;
    51..60: count['E']:= count['E'] + 1;
    0..50: count['F']:= count['F'] + 1;
   end;
 end;

procedure plotchart;
 var
  ch: char;
  i: integer;
 begin
  for ch:= 'F' downto 'A' do
   begin
    write(ch, ' :');
    for i:= 1 to count[ch] do
     write('*');
    writeln('(', count[ch], ')')
   end;
 
 
 
 end;

begin
 mark[1]:= 45; mark[2]:= 23; mark[3]:= 86; mark[4]:= 99; mark[5]:= 83; mark[6]:= 91; mark[7]:= 62; mark[8]:= 83; mark[9]:= 21; mark[10]:= 73;
 countgrade;
 plotchart;
end.