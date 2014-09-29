import UIKit

// MARK: - Types

var health = 100

var attackPower = 30.5

var healthDoube: Double = 30

var dogLegs: Int
dogLegs = 18;

var name = "Saha"
countElements(name)
name.hasPrefix("Saha")


// MARK: - List Types

var arrayOfNumbers = [1, 15, 3]
arrayOfNumbers += [8]
arrayOfNumbers.append(3)

var tupple = (5, "qqq")
var comingTupple: (Int, Int, Int)
comingTupple.0 = 5
comingTupple.1 = 3
comingTupple.2 = 1
comingTupple

var serverResponce: (code: Int, data: String) = (404, "error")
serverResponce.data

var dictionaryOfCodes: [Int:String]
dictionaryOfCodes = [3:"qq", 4:"www"]
dictionaryOfCodes[8]


// MARK: - Cycles

for i in 0...10 {
    i
}

for i in 10..<19 {
    i
}

for el in arrayOfNumbers {
    el
}

for (index, el) in enumerate(arrayOfNumbers) {
    "object at \(index) is \(el)"
}

// MARK: - Functions

func myPow(a: Double, b: Double) -> (Double, Int) {
    var result = pow(a, b)
    return (result, Int(result))
}

myPow(4.5, 2);

func myPow2(a: Double)(b:Double) -> (Double) {
    return pow(a, b)
}

myPow2(2)(b: 4)

var powerOfFive = myPow2(5)
powerOfFive(b: 2)

func myPow3(a: Double) -> (Double -> Double) {
    func insidePow(b: Double) -> Double {
        return pow(a, b)
    }
    return insidePow
}

var powerOfFour = myPow3(4);
powerOfFour(2)

var twiceNumbers: ((Int, Int) -> Int)
twiceNumbers = {
    (a, b) in
    return a + b
}
twiceNumbers(2, 3)

arrayOfNumbers = [1, 2, 3, 4]
var newArray: [Int] = arrayOfNumbers.map({
    el in
    return el * 2
})

arrayOfNumbers.map() {$0 * 2}

twiceNumbers = {$0 + $1}

arrayOfNumbers.filter() {
    $0 % 2 == 0
}


var point = (0, 5)
var number = 5


switch (point) {
case (0, 0):
    "centre"
case (_, 0):
    "x"
case (0, let y):
    "\(y)"
case (0...2, 0...2):
    "square"
default:
    "another"
}






























