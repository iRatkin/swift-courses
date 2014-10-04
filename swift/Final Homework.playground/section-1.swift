// Playground - noun: a place where people can play

import UIKit


protocol Life {
    func newDay()
}

protocol stationControl {
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
    
    private var health: Int = 0
    var energyToday: (Int -> Int)?
    
    var totalEnergy: Int {
        if let funct = energyToday {
            return funct(health)
        }
            
        return 0
    }
    
    init (a: (Int -> Int)?) {
        energyToday = a
    }
    
    func newDay() {
        health -= 1
    }
}

var arr = [1, 2, 3, 4]

var count = 1
arr.map() { count *= $0 }

count

var newCount =
arr.reduce(1, combine: { $0 * $1 })




