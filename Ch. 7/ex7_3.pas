{Yip Tsz Fung 5D07}
{NIM Game}

program ex7_3;

var
 NIMstones: integer; {stores no. of stones left}
 endgame: boolean; {true = end of game}
 turn: string; {stores player's or computer's turn}

procedure PlayerTurn (var stones: integer);
 var take: integer;
 begin
  writeln;
  writeln('Player Turn');
  write('Input number of stones to be taken: '); readln(take);
  while (take > stones) or (take > 3) or (take < 1) do
   begin
    writeln ('Invalid input. Please re-enter');
    write ('Input number of stones to be taken: ');
    readln (take)
   end;
  stones:= stones - take;
  writeln('Stones left = ', stones);
 end;


procedure ComputerTurn (var stones: integer);
 var take: integer;
 begin
  writeln;
  writeln('Computer Turn');
  repeat
   take:= random(3) + 1;
  until take <= stones;
  writeln('Computer takes ', take);
  stones:= stones - take;
  writeln('Stones left = ', stones);
 end;

begin {main program}

 randomize;
 endgame:= false;
 NIMstones:= random(16) + 15;
 turn:= 'player';
 writeln('There are ', NIMstones, ' stones');

 repeat
  if turn = 'player'
   then begin
         PlayerTurn(NIMstones);
         turn:= 'computer';
        end
   else if turn = 'computer'
         then begin
               ComputerTurn(NIMstones);
               turn:= 'player';
              end;
  if NIMstones = 0
   then endgame:= true;
 until endgame;

 if turn = 'computer'
  then writeln('Computer Wins!')
  else writeln('Player Wins!');

end.