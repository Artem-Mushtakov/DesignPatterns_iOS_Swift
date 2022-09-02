//
//  AbstractFactoryProtocol.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation

protocol AbstractFactoryProtocol {
    func createChair() -> ChairProtocol
    func createTable() -> TableProtocol
    func createSofa() -> SofaProtocol
}
