//
//  AbstractFactoryViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation
import UIKit

// Абстрактная фабрика, порождающий паттерн, который позволяет создать связанные обьекты
// не привязываясь к конкретным классам.

class AbstractFactoryViewController: UIViewController {

    var chair: ChairProtocol?
    var table: TableProtocol?
    var sofa: SofaProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func orederKitchen() {
        chair = KitchenFactory().createChair()
        table = KitchenFactory().createTable()
        sofa = KitchenFactory().createSofa()
    }

    func orederBedRoom() {
        chair = BedRoomFactory().createChair()
        table = BedRoomFactory().createTable()
        sofa = BedRoomFactory().createSofa()
    }
}
