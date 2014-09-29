// Playground - noun: a place where people can play

import UIKit



// TODO: Имена
class HomeWorkClass<T: Equatable> {
    
    var count: Int = 0
    var array: [T]
    
    init(_ array: [T]) {
        self.array = array
    }
    
    // TODO: Название
    func addToArray(newElement: T) {
        var isHere = false
        for el in array {
            if el == newElement {
                // TODO: Выпрыгивать, без bool
                isHere = true
            }
        }
        if !isHere {
            array.append(newElement)
        }
    }
    
    func removeFromArray(newElement: T) {
        array = array.filter() { $0 != newElement }
    }
    
    // TODO: isContais
    func isElementHere(newElement: T) -> Bool {
        if find(array, newElement) == nil {
            return false
        }
        return true
    }
    
    // TODO: (T -> U) -> [U]
    func map(function: T -> T) {
        for index in 0..<array.count {
            array[index] = function(array[index])
        }
    }
}

//func ==<T>(lhs: HomeWorkClass<T>, rhs: HomeWorkClass<T>) -> Bool {
//    return (lhs.count == rhs.count)
//}

extension HomeWorkClass {
    var deleteAllElements:() {
        return self.array.removeAll(keepCapacity: false)
    }
}

var homeClass = HomeWorkClass<Int>([])
var classHome = HomeWorkClass<Int>([1, 2, 3, 4, 5])


homeClass.count = 5;
homeClass.array = [1, 2, 3, 4, 5, 6, 7, 7]
homeClass.isElementHere(5)
homeClass.isElementHere(9)
homeClass.map(
    { $0 * 2} )






