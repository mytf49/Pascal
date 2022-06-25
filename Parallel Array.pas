program processStudent;

var 
 sid: array[1..5] of integer;
 sName: array[1..5] of string[30];
 sClass: array[1..5] of string[2];

procedure inputData;
 begin 
 sid[1]:= 1001; sName[1]:= 'Aubrey Chan'; sClass[1]:= '4A';
 sid[2]:= 1002; sName[2]:= 'Betty Ma';    sClass[2]:= '4B';
 sid[3]:= 1003; sName[3]:= 'Charles Lam'; sClass[3]:= '4C';
 sid[4]:= 1004; sName[4]:= 'Dick Leung';  sClass[4]:= '4D';
 sid[5]:= 1005; sName[5]:= 'Eliza Wong';  sClass[5]:= '4B';
end;

procedure searchbyID;
 var 
  targetID:integer;
  a:integer;
  targetfound:boolean;
 begin
  targetfound:= false;
  a:= 1;
  write ('Enter your target ID: '); readln (targetID);
  repeat 
   if sid[a] = targetID
    then targetfound:= true
    else a:= a + 1;
  until (targetfound = true) or (a = 5);
  if targetfound
   then writeln ('ID: ', sid[a], ' | Name: ', sName[a], ' | Class: ', sClass[a])
   else writeln ('Target not found');
 end;

procedure searchbyClass;
 var
  targetClass: string;
  b: integer;
  targetClassFound: boolean;
 begin
  targetClassFound:= false;
  b:= 1;
  write('Enter your target class: '); readln(targetClass);
  for b:= 1 to 5 do
   if sClass[b] = targetClass
    then begin
          targetClassFound:= true;
          writeln ('ID: ', sid[b], ' | Name: ', sName[b], ' | Class: ', sClass[b]);
         end;
  if targetClassFound = false
   then writeln('Target not found');
 end;

begin
 inputData;
 searchbyID;
 searchbyClass;
end.
