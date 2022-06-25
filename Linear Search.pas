{Perform linear search of a list of student's name and their mark}

program linearsearch;

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

procedure search(var index: integer);
 var
  target: string; {no. of students to be searched}
  found: boolean; {search status}
  count: integer; {no. of iterations}
 begin
  write('Enter name of student: '); readln(target);
  found:= false;
  count:= 0;
  index:= 0;
  repeat
   count:= count + 1;
   with student[count] do
    if name = target
     then begin
           index:= count;
           found:= true;
          end;
  until found or (count = num) or (student[count].name > target);
  writeln('Number of iterations = ', count)
 end;

procedure displayresult(index: integer);
 begin
  if index = 0 {search is unsuccessful, index = 0}
   then writeln('Record not found!')
   else with student[index] do
    begin
     writeln('Record found!');
     writeln('Student name = ', name);
     writeln('Exam mark = ', mark);
    end;
 end;

begin {main}
 inputdata;
 displaydata(num);
 writeln;
 search(position);
 displayresult(position);
end.