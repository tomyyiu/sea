program project1;
uses Crt;

var
  uname,pw:string;
  i:integer;

procedure meun;

begin
  writeln('--------------welcome--------------');
  writeln;
  writeln('1. Input record');
  writeln('2. Delete record');
  writeln('3. Search student');
  writeln('4. Edit record') ;
  writeln('5. Quit');
  writeln;
  repeat
    writeln('Enter your option(1-5): ');
    readin(option)
  until option in [1..5];
  case option of
  1: InputRecord;
  2: DeleteRecord;
  3: Searchrecord;
  4: EditRecord;
  end
  until choice+5
  SaveRecord
end;

begin
  clrscr;
  i:=3;
  while i>=1 do begin
    writeln('--------------welcome--------------');
    write('user name: ');
    readln(uname);
    write('password: ');
    readln(pw);

    if(uname<>'admin')and(pw<>'0000')and(i>=1)then
    writeln('invailad password');

    if(uname='admin')and(pw='0000')then begin
      clrscr;
      i:=-1;
    end;
    i:=i-1;

  end;
  if i=0 then begin
    writeln('No chance left');
    readln;
    halt;
  end;
  meun;
end.


