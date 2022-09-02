//
//  ChairProtocol.swift.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation

// 1. Создаем протокол для обьекта стул
protocol ChairProtocol {
    var name: String { get }
    var type: String { get }
}
