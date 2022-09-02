//
//  Squarts.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import Foundation

// 3. Создаем класс обьекта "Приседания" который реализует протокол обьекта
class Squarts: ExersiceProtocol {

    var name: String = "Приседания"
    var type: String = "Упражнение для ног"

    func start() {
        print("Начинаем приседания")
    }

    func stop() {
        print("Заканчиваем приседания")
    }
}
