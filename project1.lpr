program project1;
uses Crt;

var
  uname,pw:string;
  i:integer;

procedure meun;
begin
  writeln('--------------welcome--------------');
  readln;
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


