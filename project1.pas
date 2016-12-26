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
  reset(contactfile);

    count:=0;
    while not eof(contactfile)do
    begin
      count:=count+1;
      with Student[count] do
      begin
      readln(contactfile, name);
      readln(contactfile, s_class);
      readln(contactfile, c_no);
      readln(contactfile, ID);
      readln(Contactfile, phone_no);
      end;
    end;
    close(contactfile)
end;

procedure InputRecord(var count: integer);

var
  ans:char;

begin
  clrscr;
  writeln('--------------welcome--------------');
  writeln('input records');
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

end;

procedure DeleteRecord(var count: integer);
var
  ans:char;
  target: string[32];
  found:boolean;
  num,index:integer;
begin
  clrscr;
  writeln('Delete student record');
  write('Enter student ID or name to be delete');
  readln(target);
  found:=false;
  num:=0;
  repeat
    num:=num+1;
    with Student[num] do
      if Name=target
      then begin
        index:=num;
        found:=true;
      end;
  until found or (num=count);
  if found
  then begin
    write('Student record found, delete it (Y/N)? ');
    readln(ans);
    then begin
      with Student[index] do
      Name:='';
      count:=count-1;
      writeln('student record eliminated') ;
    end;
  end;
  else writeln('Record not found');
end;

procedure Searchrecord(var count: integer);

begin
  clrscr;
end;

procedure EditRecord(var count: integer);
var
  target:string[32];
  found:boolean;
  n,index:=integer;
begin
  clrscr;
  writeln('Edit student record');
  write('Enter student ID or name to be edit: ');
  readln(target);
  found:=false;
  n:=0;
  repeat
    n:= n+1;
    with Student[n] do
    if Name=target
    then begin
      index:=n;
      found:=true;
      end;
    until found or(n=count);
    if found
    then begin
      writeln('Student record found'):
      with Student[index] do
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
      writeln('Record updated');
      end;
      end;
    else writeln('record updated!');
end;

procedure SaveRecord(count: integer);
var
  n:=integer;
begin
  rewrite(contactfile);
  for n:=1 to count do
      with Student[n] do
      if name<>''
      then begin
      writeln(contactfile, name);
      writeln(contactfile, s_class);
      writeln(contactfile, c_no);
      writeln(contactfile, ID);
      writeln(Contactfile, phone_no);
      end;
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


