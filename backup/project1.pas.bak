program project1;
uses Crt;

type
  StudentType= record
                  Name :string[32];
                  ID   :string[16];
                  S_class:string[2];
                  c_no :string[2];
                  phone_no:string[8];
  end;

var
  uname,pw:string;
  i,Totalrecord:integer;
  option:1..5;
  contactfile:text;
  student:array[1..1024] of StudentType;

procedure ReadRecord(var count: integer);
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
    with Student[count] do
    begin
      write('Enter student ID: ');
      readln(ID);
      write('Enter student name: ');
      readln(name);
      write('Enter student class: ');
      readln(s_class);
      write('Enter class no.: ');
      readln(c_no);
      write('Enter phone no.: ');
      readln(phone_no);
      writeln(contactfile, name);
      writeln(contactfile, s_class);
      writeln(contactfile, c_no);
      writeln(contactfile, ID);
      writeln(Contactfile, phone_no);
    end;
    write('Input more record (Y/N) ? ');
    readln(ans);
  until ans in ['N', 'n'];
  close(contactfile);
end;

procedure DeleteRecord(var count: integer);

begin

end;

procedure Searchrecord(count: integer);

begin

end;

procedure EditRecord(var count: integer);

begin

end;

procedure SaveRecord(count: integer);

begin
  close(Contactfile);
end;

procedure meun;

begin
  ReadRecord(Totalrecord);
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
      1: InputRecord(TotalRecord);
      2: DeleteRecord(TotalRecord);
      3: Searchrecord(TotalRecord);
      4: EditRecord(TotalRecord);
    end
  until option = 5;
  SaveRecord(Totalrecord);
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


