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
    
    // TODO: - Вызывать NewDay
    // TODO: - reduce/map
    func newDay() {
        lastDayValues = 0;
        if isWork {
            for counter in counters {
                lastDayValues += counter.health
            }
        }
        clearWrongCounters()
    }
    
    private func clearWrongCounters() {
        counters.filter ({ $0.health >= 1 })
    }
}

class Counter: Life {
    
    private var health: Int = 0
    // TODO: Где подсчет?
    var energyToday: (Int -> Int)?
    
    func newDay() {
        health -= 1
    }
}

4





