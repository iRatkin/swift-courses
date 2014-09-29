    // Playground - noun: a place where people can play

import UIKit

class Person {
    
    var name: String
    var age: Int
    var job: String?
    
    init(name: String) {
        self.name = name;
        self.age = 0;
    }
    
    func present() -> String {
        return "Hi, my name is \(name) and my age is \(self.age)"
    }
}

var person = Person(name: "ALEX")
person.age = 21
person.present()

var optionalString: String?
optionalString?.hasSuffix("ddd")
if let string = optionalString {
    string.hasSuffix("qqq")
}

var string: String = "Alex"
string.hasSuffix("Alex2")

person.job = "castssdsd"
person.job

class Worker: Person {
    var sellary: Int
    
    init(name: String, sellary: Int) {
        self.sellary = sellary
        super.init(name: name)
    }
    
    override func present() -> String {
        return "\(super.present()) and my sellary is \(sellary)"
    }
    
    func changeJob(job: String, withSellary sellary: Int) {
        self.job = job
        self.sellary = sellary
    }
}

var human = Worker(name: "Alex", sellary: 300)
human.changeJob("wooorker", withSellary: 2000)
human.present()




struct Point {
    var x, y: Int
}

var point = Point(x: 2, y: 2)

var color = UIColor.redColor()

func function(x1: Int, x2: Int, funct: Double -> Double) -> [Double] {
    var arrayOfValues: [Double] = []
    for i in x1...x2  {
        arrayOfValues.append(funct(Double(i)))
        funct(Double(i))
    }
    return arrayOfValues
}

function(0, 100) {cos($0)}


// MARK: - HOMEWORK 1

func factorial(number: Int) -> Int {
    var result = 1;
    for i in 1...number {
        result *= i;
    }
    return result;
}
factorial(5)

func factorialRecursive(number: Int) -> Int {
    if number == 0 {
        return (1)
    } else {
        return (number * factorialRecursive(number-1))
    }
}
factorialRecursive(5)


// MARK: - HOMEWORK 2
func detectSuffixOrPostfix(strings: [String], mainString: String) -> ([Int], [Int]) {
    var hasSuffix: [Int] = []
    var hasPrefix: [Int] = []
    for (index, secondString) in enumerate(strings) {
        if secondString.hasSuffix(mainString) {
            hasSuffix.append(index)
        }
        if secondString.hasPrefix(mainString) {
            hasPrefix.append(index)
        }
    }
    return (hasSuffix, hasPrefix)
}
detectSuffixOrPostfix(["qwerty","qwe","rty","wer"], "qwe")



// MARK: - HOMEWORK 3
func funcOtsev(number: Int) -> Bool {
    return (number % 2 == 0)
}

func otsev(numbers: [Int], funcOtsev: Int -> Bool) -> ([Int], Int) {
    var newArray: [Int] = []
    var summ = 0;
    for (index, el) in enumerate(numbers) {
        if funcOtsev(el) {
            summ += el
        } else {
            newArray.append(el)
        }
    }
    return (newArray, summ)
}

otsev([1, 2, 3, 4, 5, 7], funcOtsev)

otsev([1, 2, 3, 4, 5, 7], {
    el in
    return (el % 2 == 0)
})

otsev([1, 2, 3, 4, 5, 7])
    { $0 % 2 == 0 }






var array = [1, 2, 3, 4, 5]
find(array, 7)

    




















