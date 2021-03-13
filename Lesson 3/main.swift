//
//  main.swift
//  Lesson 3
//
//  Created by Елизавета on 13.03.2021.
//

import Foundation

enum Engine: String {
    case launched = "Запущен"
    case notLaunched = "Не запущен"
}

enum Window {
    case open, close
}

struct SportCar {
    let marka: String
    let startYear: Int
    let trunkVolume: Double
//    var engineStarted: Engine
    var engineStarted: Engine{
        didSet{
            if oldValue == .launched{
                print("Было у \(marka) \(startYear) - Двигатель запущен")
            }
            else{
                print("Было у \(marka) \(startYear) - Двигатель отключен")
            }
        }
        willSet{
            if newValue == .launched{
                print("\(marka) \(startYear) - Двигатель запущен")
            }
            else {
                print("\(marka) \(startYear) - Двигатель отключен")
            }
        }
    }
    var windowStatus: Window{
        didSet{
            if oldValue == .open{
                print("Было у \(marka) \(startYear) - Окна открыты")
            }
            else{
                print("Было у \(marka) \(startYear) - Окна закрыты")
            }
        }
        willSet{
            if newValue == .open{
                print("\(marka) \(startYear) - Окна открыты")
            }
            else {
                print("\(marka) \(startYear) - Окна закрыты")
            }
        }
    }
    var usedTrunkVolume: Double{
        didSet{
            print("Было занято у \(marka) \(startYear)", oldValue)
        }
        willSet{
            print("\(marka) \(startYear) - сейчас занято", newValue)
        }
    }
    
    mutating func changeWindowStatus(state: String){
        switch state {
        case "stateOpen":
            self.windowStatus = .open
        case "stateClose":
            self.windowStatus = .close
        default:
            print("Ошибка значения аргумента")
        }
    }

}


struct TrunkCar {
    let marka: String
    let startYear: Int
    let trunkVolume: Double
    var engineStarted: Engine{
        didSet{
            if oldValue == .launched{
                print("Было у \(marka) \(startYear) - Двигатель запущен")
            }
            else{
                print("Было у \(marka) \(startYear) - Двигатель отключен")
            }
        }
        willSet{
            if newValue == .launched{
                print("\(marka) \(startYear) - Двигатель запущен")
            }
            else {
                print("\(marka) \(startYear) - Двигатель отключен")
            }
        }
    }
    var windowStatus: Window{
        didSet{
            if oldValue == .open{
                print("Было у \(marka) \(startYear) - Окна открыты")
            }
            else{
                print("Было у \(marka) \(startYear) - Окна закрыты")
            }
        }
        willSet{
            if newValue == .open{
                print("\(marka) \(startYear) - Окна открыты")
            }
            else {
                print("\(marka) \(startYear) - Окна закрыты")
            }
        }
    }
    var usedTrunkVolume: Double{
        didSet{
            print("Было занято у \(marka) \(startYear)", oldValue)
        }
        willSet{
            print("\(marka) \(startYear) - сейчас занято", newValue)
        }
    }
    
    mutating func changeWindowStatus(state: String){
        switch state {
        case "stateOpen":
            self.windowStatus = .open
        case "stateClose":
            self.windowStatus = .close
        default:
            print("Ошибка значения аргумента")
        }
    }
}

var sportCar1 = SportCar(marka: "chevrolet", startYear: 2012, trunkVolume: 450, engineStarted: .notLaunched, windowStatus: .close, usedTrunkVolume: 220)
var trunkCar1 = TrunkCar(marka: "honda", startYear: 2020, trunkVolume: 650, engineStarted: .launched, windowStatus: .open, usedTrunkVolume: 400)


print("Запуск/отключение двигателя")
print(" ")
sportCar1.engineStarted = .launched
sportCar1.engineStarted = .notLaunched
trunkCar1.engineStarted = .notLaunched
trunkCar1.engineStarted = .launched
print(" ")
print("==================================")
print(" ")
print("Открытие/закрытие окон")
print(" ")
sportCar1.windowStatus = .open
sportCar1.windowStatus = .close
trunkCar1.windowStatus = .close
trunkCar1.windowStatus = .open
print(" ")
print("==================================")
print(" ")
print("Загрузка/Выгрузка груза")
print(" ")
sportCar1.usedTrunkVolume = sportCar1.usedTrunkVolume - 210
sportCar1.usedTrunkVolume = sportCar1.usedTrunkVolume + 210
trunkCar1.usedTrunkVolume = trunkCar1.usedTrunkVolume - 210
trunkCar1.usedTrunkVolume = trunkCar1.usedTrunkVolume + 210
print(" ")
print("==================================")
print(" ")
print("Работа метода с одним аргументом")
print(" ")
sportCar1.changeWindowStatus(state: "stateOpen")
sportCar1.changeWindowStatus(state: "stateClose")
trunkCar1.changeWindowStatus(state: "stateClose")
trunkCar1.changeWindowStatus(state: "stateOpen")
