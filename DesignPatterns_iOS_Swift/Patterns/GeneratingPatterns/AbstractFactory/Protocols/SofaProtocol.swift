//
//  SofaProtocol.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import Foundation

// 2. Создаем протокол для обьекта диван
protocol SofaProtocol {
    var name: String { get }
    var type: String { get }
}
