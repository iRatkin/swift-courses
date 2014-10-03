// Playground - noun: a place where people can play

import UIKit


protocol Life {
    func newDay() -> ()
}

protocol stationControl {
    var currentPeriodEnergy: Int { get }
    var counterHealth: [Int] { get }
    var isWork: Bool { get }

    func resetCurrent() -> ()
    func addCounter(counter: Counter) -> ()
}

class Aes: Life {
    var currentPeriodEnergy: Int = 0
    var counters: [Counter] = []
    var isWork: Bool = false
    var lastDayValues: [Int] = []
    
    func storWorking() -> () {
        isWork = false
    }
    
    func startWorking() -> () {
        isWork = true
    }
    func newDay() -> () {
        if isWork {
            for counter in counters {
                counter.health -= 1
            }
        }
        clearWrongCounters()
    }
    
    private func clearWrongCounters() -> () {
        for i in 0..<counters.count {
            if counters[i].health < 1 {
                counters.removeAtIndex(i)
            }
        }
    }
    
    
}

class Counter {
    
    private var health: Int = 0
    var energyToday: Int { return energyThisDay(health) }

    
    func energyThisDay (health: Int) -> Int {
        return health * health + 5
    }
    
    func newDay() -> () {
        health -= 1
    }
}









