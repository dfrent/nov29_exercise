# Write a method that accepts a number as an argument and returns a string
# containing that number along with its "ordinal indicator".
# E.g. passing in 1 would return "1st", 2 would return "2nd",
# 3 would return "3rd", 4 would return "4th", etc.
#
# Make sure your method works for every number between 1 and 20.
# If you're feeling ambitious, see if you can get it working for numbers
# beyond that.

def ordinal_indicator(number)
  if number == 0
    return "zero"
  elsif number.to_s.chars.map(&:to_i).last == 1 && number != 11
    return "#{number}st"
  elsif number.to_s.chars.map(&:to_i).last == 2 && number != 12
    return "#{number}nd"
  elsif number.to_s.chars.map(&:to_i).last == 3 && number != 13
    return "#{number}rd"
  else
    return "#{number}th"
  end
end

puts ordinal_indicator(1)
puts ordinal_indicator(2)
puts ordinal_indicator(3)
puts ordinal_indicator(84)
puts ordinal_indicator(8576)
puts ordinal_indicator(0)
