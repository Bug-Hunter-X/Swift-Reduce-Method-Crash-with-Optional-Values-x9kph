# Swift Reduce Method Crash with Optional Values

This repository demonstrates a common issue when using the `reduce` method in Swift with optional values. The `reduce` method will throw an error if it encounters a `nil` value. This is unexpected behavior for users who are not familiar with the way that `reduce` handles optional values.

The `bug.swift` file contains code that demonstrates the issue. The `bugSolution.swift` file contains a solution to the issue. 

## Bug

The following code will crash the program:

```swift
let maybeNumbers: [Int?] = [1, 2, nil, 4, 5]

let sum = maybeNumbers.reduce(0, +)
```

## Solution

The solution is to use the `compactMap` method to remove the `nil` values from the array before using the `reduce` method. Here's how:

```swift
let maybeNumbers: [Int?] = [1, 2, nil, 4, 5]

let sum = maybeNumbers.compactMap{$0}.reduce(0, +)
```