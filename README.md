# MasterCrack

A repository of Master Lock Combination Lock cracking scripts
<br>
<br>

## Table of Contents

- [MasterCrack](#mastercrack)
  - [Table of Contents](#table-of-contents)
  - [Introduction](#introduction)
  - [Usage](#usage)
    - [@SamyKamkar's exploit instructions](#samykamkars-exploit-instructions)
    - [**How to use files**](#how-to-use-files)
  - [Files](#files)
  - [License](#license)

## Introduction

This repository contains a collection of code that allow a user to easily narrow down all the possible combinations on a Master Lock Combination lock down to 8 combos or less. This method was not discovered by me it was discovered by [@SamyKamkar](https://twitter.com/samykamkar). I simply made an easy way for people to do this in many different programming languages. This repo is useful if you were to make a lock cracking robot.

[Samy's example website](https://samy.pl/master/master.html)

**Disclaimer: Please ensure that you have appropriate legal permissions before using these tools. Unauthorized cracking of locks is illegal and unethical. Use this information responsibly and only on locks that you own or have proper authorization to access.**

<br><br>

## Usage

### [@SamyKamkar's](https://samy.pl/master/master.html) exploit instructions

```
1. Set the dial to 0.
2. Apply full pressure upward on the shackle as if trying to open it.
3. Rotate dial to the left (towards 10) hard until the dial gets locked.


//first_locked_position

4. Notice how the dial is locked into a small groove. If you're directly between two digits such as 3 and 4, release the shackle and turn the dial left further until you're into the next locked groove. However, if the dial is between two half digits (eg 2.5 and 3.5), then enter the digit in-between into First Locked Position (eg, 3)

//second_locked_position

5. Do this again until you find the second digit below 11 that is between two half digits (eg 5.5 and 6.5), and enter the whole number in Second Locked Position (eg, 7).

6. Apply half as much pressure to the shackle so that you can turn the dial.
7. Rotate dial to the right until you feel resistance. Rotate the dial to the right several more times to ensure you're feeling resistance at the same exact location.

// resistant_location

8. Enter this number in Resistant Location. If the resistance begins at a half number, such as 14.5, enter 14.5.


9. Click Find Combos!
We now have 20 possible combos, but we'll reduce this further. Keep reading!
10. Set the dial to the first possibility for the Third Digit.
11. Apply full pressure upward on the shackle as if trying to open it.
12. Turn the dial and note how much give there is.
13. Loosen the shackle and set the dial to the second possibility for the Third Digit.
14. Apply full pressure upward on the shackle as if trying to open it.


//loose_third
15. If there is more give on the second digit, click the second digit. Otherwise, click the first digit.


16. You are left with 8 possible combinations. Test them all until one works with the standard instructions below!

Standard instructions for combination lock:
1. Turn right three times. Stop at First Digit.
2. Turn left one full turn passing 1st number and stop at Second Digit.
3. Turn right and stop at Third Digit. Pull shackle. Profit.



NOTE: If you only find ONE locked position under 11, try to find two locked positions between 10 and 20, and remove the first digit. So if "13" and "17" lock up, enter "3" and "7" as the locked positions into the tool.
```

<br><br>
### **How to use files**
<br>
**Change the values of**:

``` python
first_locked_position = 4; // change

second_locked_position = 7; // change

resistant_location = 23; // change

loose_third = 4; // change
```

follow the instructions above if you are not sure what to change them to or if you need extra help, here is a video explanation by [@SamyKamkar's](https://www.youtube.com/watch?v=09UgmwtL12c&t=3s&ab_channel=samykamkar)

**Run the code** and it will give you a first value, a list of possible second values, and two possible third values. Use the third value that is loosest. (loose_third)








<br><br>

## Files

- `lockcrack.py`: Python script to crack Master Lock combinations.
- `lockcrack.cpp`: C++ program to crack Master Lock combinations.
- `lockcrack.js`: JavaScript code to crack Master Lock combinations.
- `lockcrack.rb`: Ruby script to crack Master Lock combinations.



## License

This project is licensed under the [MIT License](LICENSE). See the [LICENSE](LICENSE) file for more details.
