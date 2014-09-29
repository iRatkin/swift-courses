// Playground - noun: a place where people can play

import UIKit



class UniqGeneric<T: Equatable> {
    
    var count: Int = 0
    var array: [T]
    
    init(_ array: [T]) {
        self.array = array
    }
    
    func push(newElement: T) {
        var isHere = false
        for el in array {
            if el == newElement {
                return
            }
        }
            array.append(newElement)
    }
    
    func remove(newElement: T) {
        array = array.filter() { $0 != newElement }
    }
    
    func isContains(newElement: T) -> Bool {
        if find(array, newElement) == nil {
            return false
        }
        return true
    }
    
    func map<U>(function: T -> U) -> [U] {
        var newArray: [U] = []
        for el in array {
            newArray.append(function(el))
        }
        return newArray
    }
}

//func ==<T>(lhs: HomeWorkClass<T>, rhs: HomeWorkClass<T>) -> Bool {
//    return (lhs.count == rhs.count)
//}

extension UniqGeneric {
    var deleteAllElements:() {
        return self.array.removeAll(keepCapacity: false)
    }
}

var homeClass = UniqGeneric<Int>([])

homeClass.count = 5;
homeClass.array = [1, 2, 3, 4, 5, 6, 7, 7]
homeClass.remove(2)
homeClass
homeClass.push(8)
homeClass.isContains(5)
homeClass.isContains(9)
homeClass.map()
    { $0.description }



