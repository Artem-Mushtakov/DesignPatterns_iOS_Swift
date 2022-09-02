//
//  BedRoomFactory.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation

class BedRoomFactory: AbstractFactoryProtocol {

    func createChair() -> ChairProtocol {
        print("Стул для спальни создан")
        return ChairBedRoom()
    }

    func createTable() -> TableProtocol {
        print("Стол для спальни создан")
        return CoffeTableBedRoom()
    }

    func createSofa() -> SofaProtocol {
        print("Диван для спальни создан")
        return SofaBedRoom()
    }
}
