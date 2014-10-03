// Playground - noun: a place where people can play

import UIKit



class UniqGeneric<T: Equatable> {
    
    var count: Int { return array.count }
    var array: [T] = []
    
    required init(_ array: [T]) {
        for el in array {
            push(el)
        }
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
    
    func removeFromArray(newElement: T) {
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

extension UniqGeneric: ArrayLiteralConvertible {
    class func convertFromArrayLiteral(elements: T...) -> Self {
        return self(elements)
    }
}

var homeClass = UniqGeneric<Int>([])

homeClass.array = [1, 2, 3, 4, 5, 6, 7, 7]
homeClass.push(8)
homeClass.isContains(5)
homeClass.isContains(9)
homeClass.map(
    { $0 * 2} )

var newClass: UniqGeneric<Int> = [1, 2, 2, 3]


5




