function valid = valid_date(year, month, day)
   if ~(isscalar(year) && isscalar(month) && isscalar(day))
       valid = false;
   elseif ~all([year, month, day] > 0)
       valid = false;   
   elseif any(rem([year, month, day], 1))
       valid = false;
   elseif (month > 12) || (day > 31)
       valid = false;
   else
       daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
       if isequal(rem(year, 4), 0) && (~isequal(rem(year, 100), 0) || isequal(rem(year, 400), 0))
            daysInMonth(2) = 29;
       end
       maxDay = daysInMonth(month);
       if day > maxDay
           valid = false;
       else
           valid = true;
       end
   end
end