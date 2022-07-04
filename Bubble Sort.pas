{Perform bubble sort of a ascending list of student's name and their mark into descending order}

program bubblesort;

type
 examtype = record
  name: string[30];
  mark: 0..100;
 end;

const
 num = 11; {no. of students}

var
 student: array [1..num] of examtype;
 position: integer;

procedure inputdata;
 var
  examfile: text;
  count: integer;
 begin
  assign(examfile, 'exam.txt');
  reset(examfile);
  count:= 0;
  while not eof(examfile) do 
   begin
    count:= count + 1;
    with student[count] do
     begin
      readln(examfile, name);
      readln(examfile, mark);
     end;
   end;
  close(examfile);
  end;
 
procedure displaydata(count: integer);
 var
  i, align: integer;
 begin
  writeln(' Name          Mark');
  for i:= 1 to count do
   begin
    align:= 16 - length(student[i].name);
    writeln(student[i].name, ' ', student[i].mark:align);
   end;
 end;

procedure sort; {bubble sort}
 var
  pass, i, tempmark: integer;
  tempname: string;
 begin
  for pass:= 1 to (num - 1) do
   for i:= 1 to (num - pass) do
    if student[i].name < student[i+1].name
     then begin
           tempname:= student[i].name;
           student[i].name:= student[i+1].name;
           student[i+1].name:= tempname;
           tempmark:= student[i].mark;
           student[i].mark:= student[i+1].mark;
           student[i+1].mark:= tempmark;
          end; 
 end;

procedure displayresult(count: integer);
 var
  i, align: integer;
 begin
  writeln('Sorted list in descending order: ');
  writeln(' Name          Mark');
  for i:= 1 to count do
   begin
    align:= 16 - length(student[i].name);
    writeln(student[i].name, ' ', student[i].mark:align);
   end;
 end;

begin {main}
 inputdata;
 displaydata(num);
 writeln;
 sort;
 displayresult(num);
end.