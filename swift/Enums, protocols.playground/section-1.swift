// Playground - noun: a place where people can play

import UIKit

// MARK: - Basic enums

enum Colors {
    case Red, Green, Blue
}

var color = Colors.Red
color = Colors.Green

switch color {
case .Green:
    "red"
default:
    "another"
}

enum State: Int {
    case off = 0
    case on
}

var state = State.fromRaw(0)
state?.toRaw()

var state2 = State.on
state2.toRaw()

// MARK: - Advanced enums

enum ProColors {
    case Red, Green, Blue
    func description() -> String {
        switch self {
        case .Red:
            return "Red"
        case .Blue:
            return "Blue"
        default:
            return "Green"
        }
    }
}

var proColor = ProColors.Blue
proColor.description()

enum ServerResponse {
    case Success(data: String)
    case Failure(code: Int, description: String)
}

var serverResponse = ServerResponse.Success(data: "qqq")
serverResponse = ServerResponse.Failure(code: 123, description: "sssss")

switch serverResponse {
case .Success(let data):
    data
case .Failure(let code, let decription):
    "\(code) " + decription
}

// MARK: - Protocols

protocol Vehicle {
    var wheels: Int { get set }
    var isRequiresFuel: Bool { get }
    
    func start() -> String
}

class Car: Vehicle {
    var wheels: Int = 4
    let isRequiresFuel: Bool = true
    
    func start() -> String {
        return "Car started"
    }
}

class Bike: Vehicle, BooleanLiteralConvertible {
    var radius = 5
    var wheels: Int = 4
    var isRequiresFuel: Bool
    
    required init(isWithFuel: Bool) {
        self.isRequiresFuel = isWithFuel
    }
    
    func start() -> String {
        return "Bike ready"
    }

    class func convertFromBooleanLiteral(value: BooleanLiteralType) -> Self {
        return self(isWithFuel: value)
    }
}

var bike = Bike(isWithFuel: false)
bike.isRequiresFuel = true
bike.radius = 3

var vehicle: Vehicle
vehicle = Car()
vehicle = Bike(isWithFuel: true)
//vehicle.isRequiresFuel = false;
//vehicle.radius

var arrayOfVehicles: [Vehicle] = [Car(), Car(), Bike(isWithFuel: true)]
arrayOfVehicles.map()
    { $0.start() }


var newBike: Bike = false












