// Playground - noun: a place where people can play

import UIKit
protocol ProtoHuman {
    var age: Int { get }
    var name: String { get }
}

class Human: ProtoHuman {
    var age: Int
    var name: String
    var weight: Double
    init(age: Int, name: String, weight: Double) {
        self.name = name
        self.age = age
        self.weight = weight
    }
    func present() -> String {
        return "Hi, my name is \(name) and my age is \(age)"
    }
}

var human = Human(age: 35, name: "Alex", weight: 74)
human.age = 2
"This man called \(human.name) his age \(human.age) and his weight is \(human.weight)"


class HumanWorker: Human {
    var caase = SimpleCase(papers: ["one", "two", "three"])
    var post: String
    var salary: Int
    var chance: Bool
    init(post: String, salary: Int) {
        self.salary = salary
        self.post = post
        super.init(age: 0, name: "", weight: 0.0)
    }
    
}


class SimpleCase {
    var papers: [String]
    init (papers: [String]) {
        self.papers = papers
    }
    enum Papers {
        case addPaper, deletePaper
        mutating func method() -> [String] {
            switch self {
            case .addPaper:
                return(self.papers)
            case .deletePaper:
                return([""])
            }
        }
    }
}
class Work {
    var chance: Int
    var money: Int
    init(chance: Int, money: Int) {
        self.chance = chance
        self.money = money
    }
}


5
