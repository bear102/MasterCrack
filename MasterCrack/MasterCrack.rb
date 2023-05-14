second = []
third = []

first_locked_position = 4 # change
second_locked_position = 7 # change

resistant_location = 23 # change

loose_third = 4 # change

# calculates first number
first = (resistant_location + 5) % 40
mod = first % 4

# calculates third number
4.times do |i|
  if ((10 * i) + first_locked_position) % 4 == mod
    third.push((10 * i) + first_locked_position)
  end

  if ((10 * i) + second_locked_position) % 4 == mod
    third.push((10 * i) + second_locked_position)
  end
end

# calculates second numbers
x = (loose_third == third[0]) ? 1 : 2

10.times do |i|
  tmp = ((mod + 2) % 4) + (4 * i)
  if !x || ((third[x-1] + 2) % 40 != tmp && (third[x-1] - 2) % 40 != tmp)
    second.push(tmp)
  end
end

puts "First: #{first}"
puts "Second: #{second}"
puts "Third: #{loose_third}"
