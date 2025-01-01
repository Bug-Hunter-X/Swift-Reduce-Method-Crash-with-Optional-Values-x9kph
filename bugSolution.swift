let maybeNumbers: [Int?] = [1, 2, nil, 4, 5]

//Compact map removes all nil values from the array before the reduce method is called
let sum = maybeNumbers.compactMap{$0}.reduce(0, +)

print(sum) // Output: 12