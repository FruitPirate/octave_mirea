%Дано: робот в произвольной клетке внутри прямоугольного поля без внутренних перегородок. 
%Результат: клетки поля замаркированы в шахматном порядке, причем клетка с первоначальным 
%положением робота должна оказаться замаркированной.
function paint_box_chess2(r) 
south = 0; % переменная, считывающая кол-во шагов на юг.
while r.is_bord('s') == 0 
   south = south + 1; 
   r.step('s') 
end 
west = 0; % переменная, считывающая кол-во шагов на запад.
while r.is_bord('w') == 0 
   west = west + 1; 
   r.step('w') 
end 
% Робот переместился в юго-западный угол.
if rem(south,2)==0 && rem(west,2)==0 
   r.mark 
elseif rem(south,2)==1 && rem(west,2)==0
   r.step('o') 
   r.mark 
elseif rem(south,2)==0 && rem(west,2)==1
   r.mark 
elseif rem(south,2)==1 && rem(west,2)==1
   r.mark 
end 
%Закрашена или ю-з клетка или клетка правее её на один шаг 
paint_line(r) 
while r.is_bord('n') == 0 
   if r.is_mark == 0 
      r.step('n') 
      r.mark 
   else 
      r.step('n') 
      r.step('o') 
      r.mark 
end 
paint_line(r) 
end 

function paint_line(r) 
step = 0; 
while r.is_bord('o') == 0 
   step = step + 1; 
   r.step('o') 
if step == 2 
   r.mark 
   step = 0; 
end 
end 
while r.is_bord('w') == 0 
   r.step('w') 
end 
end 
end