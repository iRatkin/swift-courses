// Playground - noun: a place where people can play

import UIKit

// MARK: - Generics

func mySwap<Z>(inout a: Z, inout b: Z) {
    let temp = a
    a = b
    b = temp
}

var first = "qqq"
var second = "aaa"

mySwap(&first, &second)

var firstInt = 1
var secondInt = 2

mySwap(&firstInt, &secondInt)

firstInt

// MARK: - Stacks

class Stack<T> {
    private var array: [T] = []
    
    func push(object: T) {
        array.append(object)
    }
    
    func pop() -> T {
        return array.removeLast()
    }
}

var stack = Stack<Int>()
stack.push(3)
stack.push(4)
stack.pop()
stack.push(5)
stack.pop()
stack.pop()

class Bike: Equatable {
    var name = ""
    var wheels = 4
}

func ==(lhs: Bike, rhs: Bike) -> Bool {
    return (lhs.name == rhs.name)
}

class SuperBike: Bike { }

func useBike<T: Bike>(bike: T) {
}

useBike(SuperBike())

func someDublicates<T: Equatable>(array: [T]) -> Int {
    var count = 0
    
    for i in 0..<array.count - 1 {
        if (array[i] == array[i + 1]) {
            count++
        }
    }
    
    return count
}

someDublicates([1, 1, 2, 2, 3])

var bike = Bike()
bike.name = "Stealth"

someDublicates([Bike(), bike, SuperBike(), SuperBike()])

//func allItemsMatch<C1: Container, C2: Container
//    where C1.ItemType == C2.ItemType, C1.ItemType: Equatable>
//    (someContainer: C1, anotherContainer: C2) -> Bool

// MARK: - Extensions

extension Bike {
    var description: String {
        return "Im \(self.name)"
    }
}

bike.description


// MARK: - Properties

class Dog {
    var legs = 4
    var hurts: Int {
        set {
            legs = 4 - newValue
        }
        get {
           return 4 - legs
        }
    }
}



var dog = Dog()
dog.hurts = 1
dog.hurts

class Cat {
    var name: String
    var host: String = "No one" {
        willSet {
            "I lost \(host)"
        }
        didSet {
            description()
        }
    }
    
    init(_ name: String) {
        self.name = name
    }
    
    func description() -> String {
        return "Im \(name)"
    }
}

var cat = Cat("Murzik")
cat.host = "Alex"
cat.host = "Ivan"
7









