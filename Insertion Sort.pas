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

procedure sort; {insertion sort}
 var
  pass: integer; {no. of pass}
  pos: integer; {correct position to be inserted}
  elementmark: integer; {elements to be inserted}
  i, j: integer; {loop counter}
  elementname: string;
 begin
  for pass:= 1 to (num - 1) do
   begin
    elementmark:= student[pass+1].mark;{pick the element to be inserted}
    elementname:= student[pass+1].name;
    pos:= 1;
    for i:= 1 to pass do {search for correct position to insert element}
     if elementmark < student[i].mark then pos:= i + 1; {store correct position}
    for j:= pass downto pos do {shift elements downward and begin with the greatest element}
     begin
      student[j+1].mark:= student[j].mark;
      student[j+1].name:= student[j].name;
     end;
    student[pos].mark:= elementmark; {insert element into correct position}
    student[pos].name:= elementname;
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