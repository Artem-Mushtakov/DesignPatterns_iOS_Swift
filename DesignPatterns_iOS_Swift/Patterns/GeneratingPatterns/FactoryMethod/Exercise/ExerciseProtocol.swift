//
//  ExersiceProtocol.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import Foundation

// 1. Создаем протокол на основании которого будем создавать обьекты
protocol ExersiceProtocol {
    var name: String { get }
    var type: String { get }
    
    func start()
    func stop()
}
