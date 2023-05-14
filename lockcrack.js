let second = [];
let third = [];

let first_locked_position = 4; // change
let second_locked_position = 7; // change
let resistant_location = 23; // change
let loose_third = 4; // change

// calculates first number
let first = (Math.ceil(resistant_location) + 5) % 40;
let mod = first % 4;

// calculates third number
for (let i = 0; i < 4; i++) {
  if (((10 * i) + first_locked_position) % 4 === mod) {
    third.push((10 * i) + first_locked_position);
  }

  if (((10 * i) + second_locked_position) % 4 === mod) {
    third.push((10 * i) + second_locked_position);
  }
}

// calculates second numbers
let x = (loose_third === third[0]) ? 1 : 2;

for (let i = 0; i < 10; i++) {
  let tmp = ((mod + 2) % 4) + (4 * i);
  if (!x || ((third[x-1] + 2) % 40 !== tmp && (third[x-1] - 2) % 40 !== tmp)) {
    second.push(tmp);
  }
}

console.log("First:", first);
console.log("Second:", second);
console.log("Third:", third);
