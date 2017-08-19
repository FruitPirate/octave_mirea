function findnum(str)
state = 0;
allnumbers {};
numstr = "";
for s = 1:lentgh(str)
   if state == 0
      switch(s)
      case:{'0','1','2','3','4','5','6','7','8','9','+','-'}
         state = 1;
         numstr = strcat(numstr,s);
   elseif state == 1   
      switch(s)
      case{'0','1','2','3','4','5','6','7','8','9'}
          numstr = strcat(numstr,s);
      case{',','.'}
          state = 2;
          numstr = strcat(numstr,s); 
          otherwise
          allnumbers = AddToArray(allnumbers,numstr);
          numstr = ""; state = 0;
    elseif state == 2
       switch(s)
       case{'0','1','2','3','4','5','6','7','8','9'}
            numstr = strcat(numstr,s)
          otherwise
          allnumbers = AddToArray(allnumbers,numstr);
          numstr = "";
          state = 0;
end          
disp(allnumbers);
          
function allnumbers = AddToArray(allnumbers,numstr)
  
   len = numel(allnumbers);
   allnumbers(len+1) = numstr;
end