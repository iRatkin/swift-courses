// Playground - noun: a place where people can play

import UIKit

protocol Wagon {
    var numberOfWheels: Int { get }
    var numberOfWindows: Int { get }
    var type: WagonType { get }
}



enum WagonType {
    case Passenger, Truck, Platform
}

class PassengerWagon: Wagon {
    let type = WagonType.Passenger
    let numberOfWheels = 16
    let numberOfWindows = 20
}

class TruckWagon: Wagon {
    let type = WagonType.Truck
    let numberOfWheels = 20
    let numberOfWindows = 2
}

class PlatformWagon: Wagon {
    let type = WagonType.Platform
    let numberOfWheels = 12
    let numberOfWindows = 0
}

class Train {
    var wagons:[Wagon]
    var fuel: Int
    init(wagons: [Wagon], fuel: Int) {
        self.wagons = wagons
        self.fuel = fuel;
    }
    
    var rateOfFuel: (Int -> Int)? = nil
    
    func wagonFilter(type: WagonType) -> [Wagon] {
        var filteredWagons: [Wagon] = []
        for i in 0..<self.wagons.count {
            if self.wagons[i].type == type	{
                filteredWagons.append(self.wagons[i])
            }
        }
        return filteredWagons
    }
    
    func rateOfTwoPlaces(firstPlace: Int, secondPlace: Int) -> Int? {
        
        var totalFuel: Int = 0
        if rateOfFuel == nil {
            return nil
        }
        else {
            if firstPlace < secondPlace {
                for i in firstPlace..<secondPlace {
                    totalFuel += rateOfFuel!(i)
                }
            }
            else {
                for i in secondPlace..<firstPlace {
                    totalFuel += rateOfFuel!(i)
                }
            }
        }
        return totalFuel
    }
}



var firstWagon = PassengerWagon()
var secondWagon = TruckWagon()
var thirdWagon = PlatformWagon()

var train = Train(wagons: [firstWagon, secondWagon, thirdWagon], fuel: 1000)
train.rateOfFuel = { $0 * ($0 - 5) }

train.rateOfTwoPlaces(17, secondPlace: 15)


12




