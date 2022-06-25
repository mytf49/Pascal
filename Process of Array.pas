program processArray;

var score: array[1..10] of integer;

procedure inputScore;
 begin
 score[1] := 3;
 score[2] := 5;
 score[3] := 1;
 score[4] := 8;  
 score[5] := 5; 
 score[6] := 2;
 score[7] := 3;
 score[8] := 2;
 score[9] := 0;  
 score[10] := 6;    
 end;

procedure sumUptheScore;
 var 
  i, sum: integer;
 begin
 sum:= 0;
 for i:= 1 to 10 do sum:= sum + score[i];
 writeln('Sum = ', sum)
 end;

procedure findMaxMinScore;
 var max, min, j: integer;
 begin
 max:= 0; min:= score[1];
 for j:= 1 to 10 do
  begin
  if score[j] > max then max:= score[j];
  if score[j] < min then min:= score[j];
  end;
 writeln('Max = ', max, ' Min = ', min)
 end;

procedure searchScore;
 var input, k: integer;
 begin
 write('Enter a value: '); readln(input);
 for k:= 1 to 10 do if score[k] = input then writeln('Match number = ', k);
 end;

begin

inputScore;
sumUptheScore; 
findMaxMinScore;
searchScore;

end.