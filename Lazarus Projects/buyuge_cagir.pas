program karaktersifrele;
uses crt;

var chari:char;
     harf,x,sabit,sifreliharf:integer;

begin

read(chari);
read(x);

sabit:=ord('a')-ord('z')+1;
harf:=ord(chari) - ord('a');
sifreliharf:=harf + (x mod sabit);
if sifreliharf > 26 then   begin
sifreliharf:=(sifreliharf-sabit);    end;
sifreliharf:=sifreliharf + ord('a');

writeln(chr(sifreliharf));readkey;


end.
