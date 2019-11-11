pico-8 cartridge // http://www.pico-8.com
version 18
__lua__
l={}x=20y=20u=0v=0m=100k=0 a=rectfill e=m

for i=-1,10 do
 add(l,{x=i*20,y=70+rnd(50)})
end

f=3+flr(rnd(4))
l[f].y=l[f+1].y
::_::
cls(1)
for i=1,10 do
 line(l[i].x,l[i].y,l[i+1].x,l[i+1].y,i==f and 9 or 8)
end
a(5,10,10,110,9)
a(5,10,10,110-e/m*100,0)
if(k==0)v+=.01x+=u y+=v
if(btn(⬆️)) e-=1 v-=.02 print("◆",x-3,y,8)
if(btn(➡️)) e-=1 u+=.02 print("◆",x-7,y-4,8)
if(btn(⬅️)) e-=1 u-=.02 print("◆",x+1,y-4,8)
--?"◆",x,y+4,8
?"😐",x-3,y-4,4
d=ceil((x+20)/20)
if (x-l[d].x)*(l[d].y-l[d+1].y)+(y-l[d].y)*(l[d+1].x-l[d].x)>0 then
 if d==f and abs(u)<1 and abs(v)<1 then
  k=1 print("gagne!",10,10,5)
 else
  k=2
print("perdu",10,10,5)
end
end
flip()
goto _
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
