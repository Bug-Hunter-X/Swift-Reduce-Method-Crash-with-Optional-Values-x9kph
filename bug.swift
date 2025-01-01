let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

//The code above works as expected, but what if we need to handle potential errors?

let maybeNumbers: [Int?] = [1, 2, nil, 4, 5]

//This will crash the program because reduce can not handle nil values
let sum2 = maybeNumbers.reduce(0, +)