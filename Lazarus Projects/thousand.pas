program thousand;
uses crt;
var actual,undo1,undo2,undo3,undo4,undo5:array [1..4,1..4] of byte;
    random2i,random2j:array[1..16] of byte;
    i,j,k,test:byte;
    john:integer;
    key:char;

label return;



    begin
       while true do begin
          {matrix sıfırla}   {TÜM SIFIRLAR 1 OLDU. 2 ÜZERİ X ŞEKLİNDE YAZDIRILACAK!!!}

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
         actual[4,4]:=0;}
         {matrix sıfırla}

          return:
          k:=0;
          {rasgele 2 koy}
          for i:=1 to 4 do begin
             for j:=1 to 4 do begin
               if actual[i,j]=0 then  begin
               k:=k+1;
               random2i[k]:=i;
               random2j[k]:=j;
               end;
             end;
          end;

          if k<>1 then begin
          k:=random(k);
          actual[random2i[k],random2j[k]]:=2;
          end
          else
          actual[random2i[k],random2j[k]]:=2;
          {rasgele 2 koy}














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

         case key of
{sağ saraf}'d' : begin {sağ saraf}
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
{sağ saraf}end;


{sol taraf}'a' : begin {sol taraf}

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
             {sola topla}
             if (actual[i,1]=actual[i,2]) then  begin
             actual[i,1]:=actual[i,1]*2;
             actual[i,2]:=0;end;
             if (actual[i,2]=actual[i,3]) then begin
             actual[i,2]:=actual[i,2]*2;
             actual[i,3]:=0;end;
             if (actual[i,4]=actual[i,3]) then begin
             actual[i,3]:=actual[i,3]*2;
             actual[i,4]:=0;end;
             {sola topla}
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



              end;
              goto return;
{sol taraf}end;

{yukarı taraf}'w': begin
             for i:=1 to 4 do begin
             {yukarı çek1}
             if (actual[4,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[4,i];
             actual[4,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[3,i];
             actual[3,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[1,i]=0) then begin
             actual[1,i]:=actual[2,i];
             actual[2,i]:=0;
             end;
             {yukarı çek1}
             {yukarı çek1}
             if (actual[4,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[4,i];
             actual[4,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[3,i];
             actual[3,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[1,i]=0) then begin
             actual[1,i]:=actual[2,i];
             actual[2,i]:=0;
             end;
             {yukarı çek1}
             {yukarı çek1}
             if (actual[4,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[4,i];
             actual[4,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[3,i];
             actual[3,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[1,i]=0) then begin
             actual[1,i]:=actual[2,i];
             actual[2,i]:=0;
             end;
             {yukarı çek1}
             {sola topla}
             if (actual[1,i]=actual[2,i]) then  begin
             actual[1,i]:=actual[1,i]*2;
             actual[2,i]:=0;end;
             if (actual[2,i]=actual[3,i]) then begin
             actual[2,i]:=actual[2,i]*2;
             actual[3,i]:=0;end;
             if (actual[4,i]=actual[3,i]) then begin
             actual[3,i]:=actual[3,i]*2;
             actual[4,i]:=0;end;
             {sola topla}
             {yukarı çek1}
             if (actual[4,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[4,i];
             actual[4,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[3,i];
             actual[3,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[1,i]=0) then begin
             actual[1,i]:=actual[2,i];
             actual[2,i]:=0;
             end;
             {yukarı çek1}
             {yukarı çek1}
             if (actual[4,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[4,i];
             actual[4,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[3,i];
             actual[3,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[1,i]=0) then begin
             actual[1,i]:=actual[2,i];
             actual[2,i]:=0;
             end;
             {yukarı çek1}
             {yukarı çek1}
             if (actual[4,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[4,i];
             actual[4,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[3,i];
             actual[3,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[1,i]=0) then begin
             actual[1,i]:=actual[2,i];
             actual[2,i]:=0;
             end;
             {yukarı çek1}

             end;

           goto return;
{yukarı taraf}end;


{aşşağı taraf}'s' : begin
             for i:=1 to 4 do begin
             {aşşağı çek1}
             if (actual[1,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[1,i];
             actual[1,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[2,i];
             actual[2,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[4,i]=0) then begin
             actual[4,i]:=actual[3,i];
             actual[3,i]:=0;
             end;
             {aşşağı çek1}
             {aşşağı çek1}
             if (actual[1,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[1,i];
             actual[1,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[2,i];
             actual[2,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[4,i]=0) then begin
             actual[4,i]:=actual[3,i];
             actual[3,i]:=0;
             end;
             {aşşağı çek1}
             {aşşağı çek1}
             if (actual[1,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[1,i];
             actual[1,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[2,i];
             actual[2,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[4,i]=0) then begin
             actual[4,i]:=actual[3,i];
             actual[3,i]:=0;
             end;
             {aşşağı çek1}
             {topla aşşağı}
             if (actual[4,i]=actual[3,i]) then  begin
             actual[4,i]:=actual[4,i]*2;
             actual[3,i]:=0;end;
             if (actual[3,i]=actual[2,i]) then begin
             actual[3,i]:=actual[3,i]*2;
             actual[2,i]:=0;end;
             if (actual[1,i]=actual[2,i]) then begin
             actual[2,i]:=actual[2,i]*2;
             actual[1,i]:=0;end;
             {topla aşşağı}
             {aşşağı çek1}
             if (actual[1,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[1,i];
             actual[1,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[2,i];
             actual[2,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[4,i]=0) then begin
             actual[4,i]:=actual[3,i];
             actual[3,i]:=0;
             end;
             {aşşağı çek1}
             {aşşağı çek1}
             if (actual[1,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[1,i];
             actual[1,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[2,i];
             actual[2,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[4,i]=0) then begin
             actual[4,i]:=actual[3,i];
             actual[3,i]:=0;
             end;
             {aşşağı çek1}
             {aşşağı çek1}
             if (actual[1,i]<>0) and (actual[2,i]=0) then begin
             actual[2,i]:=actual[1,i];
             actual[1,i]:=0;
             end;

             if (actual[2,i]<>0) and (actual[3,i]=0) then begin
             actual[3,i]:=actual[2,i];
             actual[2,i]:=0;
             end;

             if (actual[3,i]<>0) and (actual[4,i]=0) then begin
             actual[4,i]:=actual[3,i];
             actual[3,i]:=0;
             end;
             {aşşağı çek1}


             end;

           goto return;
{aşşağı taraf}end;


           end;{end, case}



           end;{end while}


end.

