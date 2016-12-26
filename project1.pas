program project1;
uses Crt;


var
  uname,pw:string;
  i:integer;
  option:1..5;
  contactfile:text;

procedure ReadRecord;
begin
  assign(contactfile, 'contactfile.txt');
  {$I-}
  Reset(contactfile);
  {$I+}
  If (IOResult <> 0) then       //check if there is no text file
    rewrite(contactfile);


end;

procedure InputRecord(var count: integer);
var
  ans:char;
begin
  writeln('--------------welcome--------------');
  writeln('insert records');
  append(contactfile);
  repeat
    count:=count+1;
    with student[count] do
    begin
      write('Enter student name: ');
      readln(Name);
      write('Enter sex (M/F): ');
      readln(sex);
      write('Enter phone no.: ');
      readln(phone_no);
      writeln(contactfile, Name);
      writeln(contactfile, sex);
      writeln(Contactfile, phone_no);
    end;
    write('Input more record (Y/N) ? ');
    readln(ans);
  until ans in ['N', 'n'];
  close(contactfile);
end;

procedure DeleteRecord;

begin

end;

procedure Searchrecord;

begin

end;

procedure EditRecord;

begin

end;

procedure SaveRecord;

begin
  close(Contactfile);
end;

procedure meun;

begin
  ReadRecord;
  repeat
    clrscr;
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
      readln(option);
    until option in [1..5];
    case option of
      1: InputRecord;
      2: DeleteRecord;
      3: Searchrecord;
      4: EditRecord;
    end
  until option = 5;
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


