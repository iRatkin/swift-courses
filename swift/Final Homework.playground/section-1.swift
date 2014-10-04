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
    var counters: [Counter] = []
    var lastDayValues: Int = 0
    private var isWork: Bool = false
    
    func storWorking() {
        isWork = false
    }
    
    // TODO: - при возвращении из метода ничего не пишем. Исправить везде
    func startWorking() -> () {
        isWork = true
    }
    
    // TODO: - Поменять показатели, никаких -= 1
    func newDay() -> () {
        if isWork {
            for counter in counters {
                counter.health -= 1
            }
        }
        clearWrongCounters()
    }
    
    // TODO: - Tip: использую filter
    private func clearWrongCounters() -> () {
        for i in 0..<counters.count {
            if counters[i].health < 1 {
                counters.removeAtIndex(i)
            }
        }
    }
    
    
}

class Counter: Life {
    
    private var health: Int = 0
    // TODO: Где замыкание?
    var energyToday: Int { return energyThisDay(health) }

    
    func energyThisDay (health: Int) -> Int {
        return health * health + 5
    }
    
    func newDay() -> () {
        health -= 1
    }
}









