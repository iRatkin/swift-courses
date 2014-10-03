// Playground - noun: a place where people can play

import UIKit

// MARK: - Overloading

struct Vector {
    var x: Double, y: Double
}

func +(left: Vector, right: Vector) -> (Vector) {
    return Vector(x: left.x + right.x, y: left.y + right.y)
}

func -(left: Vector, right: Vector) -> Vector {
    return Vector(x: left.x - right.x, y: left.y - right.y)
}

var firstVector = Vector(x: 10, y: 20)
var secondVector = Vector(x: 30, y: 0)

firstVector + secondVector
firstVector - secondVector

var i = 5
var j = ++i
i
var k = i++

prefix func ++(inout vector: Vector) -> Vector {
    vector = Vector(x: vector.x + 1, y: vector.y + 1)
    return vector
}

postfix func ++(inout vector: Vector) -> Vector {
    var temp = vector
    vector = Vector(x: vector.x + 1, y: vector.y + 1)
    return temp
}

secondVector = ++firstVector
firstVector
var thirdVector = firstVector++
firstVector

func +=(inout left: Vector, right: Vector) {
    left = left + right
}

firstVector += thirdVector

// MARK: - Creating

infix operator ** {
    precedence 160
    associativity left
}

func **(left: Double, right: Double) -> Double {
    return pow(left, right)
}

func **(left: Vector, right: Double) -> Vector {
    return Vector(x: left.x ** right, y: left.y ** right)
}

firstVector ** 2


















