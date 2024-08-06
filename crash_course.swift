import Foundation

var greeting: String = "Hello, World!"
greeting = "Hello world"
print(greeting)

let name: String = "John"   // "let" defines a constant, whereas "var" defines a mutable variable
print(name)

// *****
// Data types

var name2: String = "John"
var age: Int = 15
var cash: Double = 60.15

var firstLetter: Character = "J"
var isAdult: Bool = true

var isMarried: Bool   // The variable type must be defined, "var isMarried" by itself is not valid
isMarried = false

// *****
// Arithmatic operators

print(2 + 5)
print(5 - 2)
print(6 * 2)
print(10 / 2)
print(10 % 2)   // Modulus / remainder operator

var value: Int = 2
print("This value is \(value)")   // String interpolation (insert a variable into a string)

// *****
// Control flow - conditionals and loops

var number1: Int = 10
var number2: Int = 12

/*
 >= (greater than or equal)
 > (greater than)
 <= (less than or equal)
 < (less than)
 == (equal)
 != (not equal)
 && (AND)
 || (OR)
*/

if number1 > number2 {
    print("Number 1 is greater than Number 2")
} else if number1 < number2 {
    print("Number 1 is less than Number 2")
} else {
    print("Number 1 is the same as Number 2")
}

for i: Int in 1...5 {   // "..." indicates a closed range operator (includes the ends)
    print(i)
}

for i: Int in 1..<5 {   // "..<" specifies that we don't want to include the 5 end value
    print(i)
}

// *****
// Functions

func greet(name: String) -> String {   // We have to specify the return variable type here also
    return "Hello, \(name)!"
}

var helloName: String = greet(name: "John")
print(helloName)

// *****
// Arrays

var numbers: [Int?] = [nil, 2, 3, 4, 5]   // Requires specifying the data types of the array elements

// We can't do this anymore because numbers is an optional array (see below)
//for number: Int? in numbers {
//    print(number)
//}

numbers.append(2)
numbers.removeLast()
print(numbers.count)
//print(numbers.first)   // Swift includes "Optional" in the output to indicate that the variables
//print(numbers.last)    // could be nothing or could be an integer (so they have the type Int?)
// We can avoid the optional warnings by including an if let statement to unwrap the optional
var numbersNew: [Int] = []
let number: [Int?]
for number: Int? in numbers {
    if number == nil {
        // The editor wanted me to localize this so it would be translated into other languages
        print(NSLocalizedString("Warning: Number in array is nil; removing", comment: ""))
    } else {
        numbersNew.append(number!)
    }
}
print(numbersNew)

numbersNew.insert(3, at: 0)   // Array index starts at zero
numbersNew.remove(at: 0)
print(numbersNew)

// This filter returns a new array containing only the values greater than 3
var filteredNumbers: [Int] = numbersNew.filter { number in
    number > 3   // We don't have to type "return" here because there's only one line
}
// We can shorten this filter like so:
var filteredNumbersShort: [Int] = numbersNew.filter { $0 > 3 }

print(filteredNumbers)
print(filteredNumbersShort)