{Perform binary search of a descending list of student's name and their mark}

program binarysearch;

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
  assign(examfile, 'examdesc.txt');
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
  top, btm, mid: integer;
 begin
  write('Enter name of student: '); readln(target);
  found:= false;
  count:= 0;
  index:= 0;
  top:= 1;
  btm:= num;
  repeat
   count:= count + 1;
   mid:= (top + btm) div 2;
   with Student[mid] do
    begin
     if target < name
      then top:= mid + 1 {lower half}
      else if target > name
            then btm:= mid - 1 {upper half}
            else begin
                  index:= mid;
                  found:= true; {search successful}
                 end; 
    end;  
  until found or (top > btm); {top > btm: cannot be found}
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