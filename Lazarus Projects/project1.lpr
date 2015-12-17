program project1;
uses crt;
var ne:Array[0..5,0..5] of integer;
tdimi:Array[0..5,0..5] of integer;
id:Array[0..5] of integer;
hafiza:Array[0..5,0..5] of integer;
    i,j,a,b,k,ovarmi,sifirara,rand,gdimi,randver,skor,kazandi:integer;
    input:string;
(* Oyun Algoritmasının İlk Çalışma Tarihi: 6.12.2014 03.04  *)

begin
                       (* İnstallization *)

                  TextBackground(Black);
                  id[1] :=  2; id[2] :=  2;  id[3] :=  2; id[4] :=  2;  id[5] :=  4;
                  rand := 1;
                  gdimi := 0;
                  skor := 0;
                  kazandi := 0;
                  randver := 1;
                  while(rand = 1) do begin      (* Büyük Döngüüü *)
                  (**** sifirarama *****)
                  sifirara := 0;
                  for j := 1 to 4 do begin
                      for i := 1 to 4 do begin
                          if(ne[i][j] = 0) then begin sifirara := 1; end;
                      end;
                  end;
                        (****)
                  if(sifirara = 1)  then begin
                        (**** Rastgele Koord Üret *)
                        if(randver = 1) then begin
                                   Randomize;
                                   a := random(4)+1;
                                   b := random(4)+1;

                                   while((ne[a][b]) <> 0) do begin
                                       Randomize;
                                       a := random(4)+1;
                                       b := random(4)+1;
                                   end;

                        ne[a][b] := id[random(5)+1]; (* Rastgele Bir Yire 2 Vermek *)
                        end;
                   end;
                        if(sifirara = 0) then begin
                        (******* Oynatabilecek Varmı yı denetleme *)
                                 ovarmi := 0;
                                 for j := 1 to 4 do begin
                                     for i := 1 to 4 do begin
                                         if((ne[i][j+1] = ne[i][j]) or (ne[i][j-1] = ne[i][j]) or (ne[i+1][j] = ne[i][j]) or (ne[i-1][j] = ne[i][j])) then  ovarmi := 1;
                                     end;
                                 end;
                                 if(ovarmi = 0) then begin
                                           writeln('Oyun Bitti'); rand := 0;
                                 end;
                        end;
                        writeln('Skor: ',skor);

                        for j := 1 to 4 do begin
                            for i := 1 to 4 do begin
                            tdimi[i][j] := 0;
                            if(ne[i][j] = 2048) then     kazandi := 1;
                            if(ne[i][j] = 2) then    TextColor(10);
                            if(ne[i][j] = 4) then     TextColor(11);
                            if(ne[i][j] = 8) then     TextColor(12);
                            if(ne[i][j] = 16) then     TextColor(13);
                            if(ne[i][j] = 32) then     TextColor(14);
                            if(ne[i][j] = 64) then     TextColor(15);
                            if(ne[i][j] = 128) then     TextColor(11);
                            if(ne[i][j] = 256) then     TextColor(12);
                            if(ne[i][j] = 512) then     TextColor(13);
                            if(ne[i][j] = 1024) then     TextColor(14);
                            if(ne[i][j] >= 2048) then     TextColor(15);
                            write( ne[i][j]);
                            if((a = i) and (b = j)) then  write('*');
                            TextColor(White);
                            write('   |   ');
                            end; writeln; writeln;
                            writeln('_____________________________');
                            writeln; writeln;
                         end;
                         if(kazandi = 1) then writeln('KAZANDINIZ..');

                         (****** Hafizadan Yazdir *******)
                         writeln('_____________________________________');  writeln; writeln;
                          for j := 1 to 4 do begin
                            for i := 1 to 4 do begin
                            if(hafiza[i][j] = 2) then    TextColor(10);
                            if(hafiza[i][j] = 4) then     TextColor(11);
                            if(hafiza[i][j] = 8) then     TextColor(12);
                            if(hafiza[i][j] = 16) then     TextColor(13);
                            if(hafiza[i][j] = 32) then     TextColor(14);
                            if(hafiza[i][j] = 64) then     TextColor(15);
                            if(hafiza[i][j] = 128) then     TextColor(11);
                            if(hafiza[i][j] = 256) then     TextColor(12);
                            if(hafiza[i][j] = 512) then     TextColor(13);
                            if(hafiza[i][j] = 1024) then     TextColor(14);
                            if(hafiza[i][j] >= 2048) then     TextColor(15);
                            write( hafiza[i][j]);
                            TextColor(White);
                            write('   |   ');
                            end; writeln; writeln;
                            writeln('_____________________________');
                            writeln; writeln;
                         end;
                         (****)
                         input := readkey;
                         randver := 0;
                (******************** Tuşlara Göre Eventler *****************)
                        if(input = 'r') then begin
                          if(gdimi = 0) then begin
                           for i := 1 to 4 do begin
                               for j := 1 to 4 do begin
                                   ne[i][j] := hafiza[i][j];
                               end;
                           end;
                           gdimi := 1;
                          end;
                         end;
                         if((input = 'w') or (input = 'a') or (input = 's') or (input = 'd')) then begin
                                     for i := 1 to 4 do begin
                                        for j := 1 to 4 do begin
                                             hafiza[i][j] := ne[i][j];
                                        end;
                                     end;
                         end;
                         if(input = 's') (* Aşağııı *) then begin
                                  for i := 1 to 4 do begin
                                      for j := 2 to 4 do begin
                                          if(ne[i][j] = 0) then begin
                                              for k := (j) downto 2 do begin
                                                  ne[i][k] := ne[i][k-1];
                                              end;
                                              ne[i][1] := 0;
                                          end;
                                      end;
                                  end;

                                  for i := 1 to 4 do begin
                                      for j := 4 downto 2 do begin
                                          if((ne[i][j] = ne[i][j-1]) and (tdimi[i][j] = 0)) then begin
                                                       ne[i][j] := (ne[i][j]+ne[i][j-1]);
                                                       skor := skor+ne[i][j];
                                                       tdimi[i][j] := 1;
                                                       for k := (j-1) downto 2 do begin
                                                           ne[i][k] := ne[i][k-1];
                                                       end;
                                                       ne[i][1] := 0;
                                          end;
                                      end;
                                  end;
                           end;  (* Aşağının Endi *)

                           if(input = 'd') then begin      (* Sağğğ  ~~ Aşağı'nın Kardeşi *)
                                    for i := 2 to 4 do begin
                                        for j := 1 to 4 do begin
                                            if(ne[i][j] = 0) then begin
                                                for k := (i) downto 2 do begin
                                                    ne[k][j] := ne[k-1][j];
                                                end;
                                                ne[1][j] := 0;
                                            end;
                                        end;
                                    end;
                                    for i := 4 downto 2 do begin
                                        for j := 1 to 4 do begin
                                            if((ne[i][j] = ne[i-1][j]) and (tdimi[i][j] = 0)) then begin
                                                         ne[i][j] := (ne[i][j]+ne[i-1][j]);
                                                         skor := skor+ne[i][j];
                                                         tdimi[i][j] := 1;
                                                         for k := (i-1) downto 2 do begin
                                                             ne[k][j] := ne[k-1][j];
                                                         end;
                                                         ne[1][j] := 0;
                                            end;
                                        end;
                                    end;
                           end;   (* Sağın Endi *)

                           if(input = 'w') (* Yukarııı *) then begin
                                    for i := 1 to 4 do begin
                                        for j := 3 downto 1 do begin
                                            if(ne[i][j] = 0) then begin
                                                for k := j to 3 do begin
                                                    ne[i][k] := ne[i][k+1];
                                                end;
                                                ne[i][4] := 0;
                                            end;
                                        end;
                                     end;
                                     for i := 1 to 4 do begin
                                         for j := 1 to 3 do begin
                                             if((ne[i][j] = ne[i][j+1]) and (tdimi[i][j] = 0)) then begin
                                                 ne[i][j] := (ne[i][j]+ne[i][j+1]);
                                                 skor := skor+ne[i][j];
                                                 tdimi[i][j] := 1;
                                                 for k := (j+1) to 3 do begin
                                                     ne[i][k] := ne[i][k+1];
                                                 end;
                                                 ne[i][4] := 0;
                                             end;
                                         end;
                                     end;
                           end;  (* Yukarının Endi *)

                           if(input = 'a') (* Soll ~~ Yukarının Kardeşi *) then begin
                                    for i := 3 downto 1 do begin
                                        for j := 1 to 4 do begin
                                            if(ne[i][j] = 0) then begin
                                                for k := i to 3 do begin
                                                ne[k][j] := ne[k+1][j];
                                                end;
                                                ne[4][j] := 0;
                                            end;
                                        end;
                                    end;
                                    for i := 1 to 3 do begin
                                        for j := 1 to 4 do begin
                                            if((ne[i][j] = ne[i+1][j]) and (tdimi[i][j] = 0)) then begin
                                                ne[i][j] := (ne[i][j]+ne[i+1][j]);
                                                skor := skor+ne[i][j];
                                                tdimi[i][j] := 1;
                                                for k := (i+1) to 3 do begin
                                                    ne[k][j] := ne[k+1][j];
                                                end;
                                                ne[4][i] := 0;
                                            end;
                                        end;
                                    end;
                           end;  (* Solun Endi *)
                           if(input = 'e') then begin
                                 rand := 0;
                           end;
                           for i := 1 to 4 do begin
                                        for j := 1 to 4 do begin
                                        if(ne[i][j] <> hafiza[i][j]) then randver:=1;
                                        end;
                           end;
                           (*********** Dongu Sonu ***************)
                           clrscr;
             end;
end.

