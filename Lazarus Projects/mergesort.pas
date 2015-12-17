program mergesort xdxdxdxdxdxdxd;
uses crt;

var dizi1,dizi2,dizi3:array [1.100] of integer;
     l1,l2,a,b,c:integer;

begin

   //merge sort
  read(l1,l2);
  for i:=1 to l1 do begin
    read(dizi1[i]); end;
  for i:=1 to l2 do begin
    read(dizi2[i]); end;

  a:=1;b:=1;c:=1;

  while ((a<=l1) AND (b<=l2)) do begin
    if ((dizi1[a]) > (dizi2[b])) then begin
     dizi3[c]:=dizi2[b]; b:=b+1; c:=c+1;

  end else
     dizi3[c]:=dizi1[a]; a:=a+1; c:=c+1;

  end;

    if (c <> a+b)  then begin

         if (a = l1 + 1) then begin



         end else



          end;



     end;



end.
