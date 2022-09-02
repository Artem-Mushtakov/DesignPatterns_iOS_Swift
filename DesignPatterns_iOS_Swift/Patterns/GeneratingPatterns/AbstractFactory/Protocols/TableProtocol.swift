//
//  TableProtocol.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation

// 3. Создаем протокол для обьекта стол
protocol TableProtocol {
    var name: String { get }
    var type: String { get }
}
