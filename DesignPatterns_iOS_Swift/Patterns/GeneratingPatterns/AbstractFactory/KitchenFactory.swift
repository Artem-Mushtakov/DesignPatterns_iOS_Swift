//
//  KitchenFactory.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation

class KitchenFactory: AbstractFactoryProtocol {

    func createChair() -> ChairProtocol {
        print("Стул для кухни создан")
        return ChairKitchen()
    }

    func createTable() -> TableProtocol {
        print("Стол для кухни создан")
        return TableKirtchen()
    }

    func createSofa() -> SofaProtocol {
        print("Диван для кухни создан")
        return SofaKitchen()
    }
}
