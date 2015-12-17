program thousand;
uses crt;
var actual,undo1,undo2,undo3,undo4,undo5:array [1..4,1..4] of byte;
    i:byte;
    john:integer;
    key:char;

label return;



    begin
       while true do begin
          {matrix sıfırla}   {TÜM SIFIRLAR 1 OLDU. 2 ÜZERİ X ŞEKLİNDE YAZDIRILACAK!!!}
         actual[1,1]:=0;
         actual[1,2]:=0;
         actual[1,3]:=4;
         actual[1,4]:=2;
         actual[2,1]:=2;
         actual[2,2]:=4;
         actual[2,3]:=8;
         actual[2,4]:=32;
         actual[3,1]:=16;
         actual[3,2]:=2;
         actual[3,3]:=2;
         actual[3,4]:=2;
         actual[4,1]:=2;
         actual[4,2]:=2;
         actual[4,3]:=2;
         actual[4,4]:=4;
         {matrix sıfırla}



         {matrix sıfırla}   {TÜM SIFIRLAR 1 OLDU. 2 ÜZERİ X ŞEKLİNDE YAZDIRILACAK!!!}
         {actual[1,1]:=0;
         actual[1,2]:=0;
         actual[1,3]:=0;
         actual[1,4]:=0;
         actual[2,1]:=0;
         actual[2,2]:=0;
         actual[2,3]:=0;
         actual[2,4]:=0;
         actual[3,1]:=0;
         actual[3,2]:=0;
         actual[3,3]:=0;
         actual[3,4]:=0;
         actual[4,1]:=0;
         actual[4,2]:=0;
         actual[4,3]:=0;
         actual[4,4]:=0; }
         {matrix sıfırla}

          return:

         {matris yazdır}
         clrscr;
         write(actual[1,1]:2);write('  ');
         write(actual[1,2]:2);write('  ');
         write(actual[1,3]:2);write('  ');
         writeln(actual[1,4]:2);writeln();
         write(actual[2,1]:2);write('  ');
         write(actual[2,2]:2);write('  ');
         write(actual[2,3]:2);write('  ');
         writeln(actual[2,4]:2);writeln();
         write(actual[3,1]:2);write('  ');
         write(actual[3,2]:2);write('  ');
         write(actual[3,3]:2);write('  ');
         writeln(actual[3,4]:2);writeln();
         write(actual[4,1]:2);write('  ');
         write(actual[4,2]:2);write('  ');
         write(actual[4,3]:2);write('  ');
         write(actual[4,4]:2);write('  ');
         {matris yazdır}

         key := readkey;
         john:=2;
         case john of
           1 : begin {sağ saraf}
              for i:=1 to 4 do begin

             {sağa çek1}
             if (actual[i,1]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,1];
             actual[i,1]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,2];
             actual[i,2]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,4]=0) then begin
             actual[i,4]:=actual[i,3];
             actual[i,3]:=0;
             end;
             {sağa çek1}
             {sağa çek1}
             if (actual[i,1]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,1];
             actual[i,1]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,2];
             actual[i,2]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,4]=0) then begin
             actual[i,4]:=actual[i,3];
             actual[i,3]:=0;
             end;
             {sağa çek1}
             {sağa çek1}
             if (actual[i,1]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,1];
             actual[i,1]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,2];
             actual[i,2]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,4]=0) then begin
             actual[i,4]:=actual[i,3];
             actual[i,3]:=0;
             end;
             {sağa çek1}

             {topla}
             if (actual[i,4]=actual[i,3]) then  begin
             actual[i,4]:=actual[i,4]*2;
             actual[i,3]:=0;end;
             if (actual[i,3]=actual[i,2]) then begin
             actual[i,3]:=actual[i,3]*2;
             actual[i,2]:=0;end;
             if (actual[i,1]=actual[i,2]) then begin
             actual[i,2]:=actual[i,2]*2;
             actual[i,1]:=0;end;
             {topla}

             {sağa çek1}
             if (actual[i,1]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,1];
             actual[i,1]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,2];
             actual[i,2]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,4]=0) then begin
             actual[i,4]:=actual[i,3];
             actual[i,3]:=0;
             end;
             {sağa çek1}
             {sağa çek1}
             if (actual[i,1]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,1];
             actual[i,1]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,2];
             actual[i,2]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,4]=0) then begin
             actual[i,4]:=actual[i,3];
             actual[i,3]:=0;
             end;
             {sağa çek1}
             {sağa çek1}
             if (actual[i,1]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,1];
             actual[i,1]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,2];
             actual[i,2]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,4]=0) then begin
             actual[i,4]:=actual[i,3];
             actual[i,3]:=0;
             end;
             {sağa çek1}

              end;


             goto return;
          end;


           2 : begin {sol taraf}

              for i:=1 to 4 do begin
               {sola çek1}
             if (actual[i,4]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,4];
             actual[i,4]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,3];
             actual[i,3]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,1]=0) then begin
             actual[i,1]:=actual[i,2];
             actual[i,2]:=0;
             end;
             {sola çek1}
             {sola çek1}
             if (actual[i,4]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,4];
             actual[i,4]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,3];
             actual[i,3]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,1]=0) then begin
             actual[i,1]:=actual[i,2];
             actual[i,2]:=0;
             end;
             {sola çek1}
             {sola çek1}
             if (actual[i,4]<>0) and (actual[i,3]=0) then begin
             actual[i,3]:=actual[i,4];
             actual[i,4]:=0;
             end;

             if (actual[i,3]<>0) and (actual[i,2]=0) then begin
             actual[i,2]:=actual[i,3];
             actual[i,3]:=0;
             end;

             if (actual[i,2]<>0) and (actual[i,1]=0) then begin
             actual[i,1]:=actual[i,2];
             actual[i,2]:=0;
             end;
             {sola çek1}




               goto return;
              end;








           end;



           end;{end, case}

         end;
    end.
