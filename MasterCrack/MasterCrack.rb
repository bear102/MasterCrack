second = []
third = []

first_locked_position = 4 # change
second_locked_position = 7 # change

resistant_location = 23 # change

loose_third = nil # change

# calculates first number
first = (resistant_location.ceil + 5) % 40
mod = first % 4

# calculates third number
(0..3).each do |i|
  if ((10 * i) + first_locked_position) % 4 == mod
    third << ((10 * i) + first_locked_position)
  end

  if ((10 * i) + second_locked_position) % 4 == mod
    third << ((10 * i) + second_locked_position)
  end
end

# calculates second numbers
if loose_third == third[0]
  x = 1
else
  x = 2
end

(0..9).each do |i|
  tmp = ((mod + 2) % 4) + (4 * i)
  if !x || (third[x-1] + 2) % 40 != tmp && (third[x-1] - 2) % 40 != tmp
    second << tmp
  end
end

puts "First: #{first}"
puts "Second: #{second}"
puts "Third Possibilities: #{third}"
puts "Loose Third: #{loose_third}"
