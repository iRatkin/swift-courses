// Playground - noun: a place where people can play

import UIKit

class UniqContainer<T: Equatable> {
    var container: [T] = []
    
    func push(newEl: T) {
        for el in container {
            if el == newEl {
                return
            }
        }
        container.append(newEl)
    }
    
    func pop() -> T {
        return container.removeLast()
    }
}


func +<T>(firstCont:UniqContainer<T>, secondCont:UniqContainer<T>) -> UniqContainer<T> {
    var newCont = firstCont;
    for el in secondCont.container {
        newCont.push(el)
    }
    return newCont
}

func +=<T>( inout firstCont:UniqContainer<T>, secondCont:UniqContainer<T>) {
    for el in secondCont.container {
        firstCont.push(el)
    }
}

prefix operator ^^ {

}

prefix func ^^(text: String) -> UniqContainer<String> {
    var newCont = UniqContainer<String>()
    
    for el in text {
        newCont.push(String(el))
    }
    return newCont
}

var firstCont = UniqContainer<Int>()
var secondCont = UniqContainer<Int>()
secondCont.container = [1, 2, 3]

firstCont + secondCont
firstCont

var text = "qqwwwerfdt"
^^text















