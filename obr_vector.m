function new_mass = obr_vector(mass)
l = length(mass);
for i = 1:l
       new_mass(i) = mass(l + 1 - i);
end
   disp(new_mass)
end