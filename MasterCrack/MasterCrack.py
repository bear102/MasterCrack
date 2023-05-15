import math

second = []
third = []


first_locked_position = 4 # change
second_locked_position = 7 # change

resistant_location = 23 # change

loose_third = None # change


# +-------------------------------------------------------------------------------+ #

# calculates first number


first = (math.ceil(resistant_location) + 5) % 40

mod = first % 4



# +-------------------------------------------------------------------------------+ #

# calculates third number
for i in range(4):
    if ((10 * i) + first_locked_position) % 4 == mod:
        third.append((10 * i) + first_locked_position)

    if ((10 * i) + second_locked_position) % 4 == mod:
        third.append((10 * i) + second_locked_position)



# +-------------------------------------------------------------------------------+ #

# calculates second numbers

if loose_third == third[0]:
    x = 1
else:
    x = 2


for i in range(10):
    tmp = ((mod + 2) % 4) + (4 * i)
    if not x or ((third[x-1]+2) % 40 != tmp and (third[x-1]-2) % 40 != tmp):
        second.append(tmp)



print("First:", first)
print("Second:", second)
print("Third Possibilities:", third)
print("Loose Third:", loose_third)


