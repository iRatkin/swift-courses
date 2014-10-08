// Playground - noun: a place where people can play

import UIKit


protocol Life {
    func newDay()
}

protocol StationControl {
    var currentPeriodEnergy: Int { get }
    var counterHealth: [Int] { get }
    var isWork: Bool { get }

    func resetCurrent()
    func addCounter(counter: Counter) -> ()
}

class Aes: Life {
    var counters: [Counter] = []
    var lastDayValues: Int = 0
    private var isWork: Bool = false
    
    func storWorking() {
        isWork = false
    }
    
    func startWorking() {
        isWork = true
    }
    
    func newDay() {
        lastDayValues = 0;
        if !isWork {
            return
        }
        
        lastDayValues = counters.reduce(0, combine: { $0 + $1.totalEnergy })
        counters.map { $0.newDay() }
        
        clearWrongCounters()
    }
    
    private func clearWrongCounters() {
        counters.filter ({ $0.health >= 1 })
    }
}

class Counter: Life {
    var health: Int = 20;
    var energyToday: (Int -> Int)?
    var totalEnergy: Int {
        if let funct = energyToday {
            return funct(health)
        }
        return 0
    }
    
    func newDay() {
        health -= 1
    }
}

class AESCenter: StationControl {
    
    var lastWorkers: Int = 0
    // TODO: - Без lastWorkers
    var numberOfWorkers: Int = 0 {
        willSet {
            if lastWorkers > numberOfWorkers {
                "count of workers decreases"
            }
        }
        didSet {
            if (numberOfWorkers < AES.counters.count ) {
                AES.storWorking()
                "Need \(AES.counters.count - numberOfWorkers) workers"
                lastWorkers = numberOfWorkers
            }
        }
    }
    
    required init (_ workers: Int) {
        numberOfWorkers = workers
    }
    
    private var AES = Aes()
    // TODO - исправить остальыне 2 свойства
    var currentPeriodEnergy: Int = 0
    var counterHealth: [Int] = []
    var isWork: Bool {
        return AES.isWork
    }
    
    func resetCurrent() {
        AES.lastDayValues = 0;
    }
    
    func addCounter(counter: Counter) {
        AES.counters.append(counter)
    }
    
    subscript(index: Int) -> Counter? {
        if (index < AES.counters.count) {
            return AES.counters[index]
        }
        return nil
    }
}



extension AESCenter: IntegerLiteralConvertible {
    class func convertFromIntegerLiteral(el: IntegerLiteralType) -> Self {
        return self(el)
    }
}

var aes: AESCenter = 5
aes.AES
aes.addCounter(Counter())
aes[0]
aes[1]

17




