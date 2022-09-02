//
//  Jumping.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import Foundation

// 2. Создаем класс обьекта "Прыжки" который реализует протокол обьекта
class Jumping: ExersiceProtocol {

    var name: String = "Прыжки"
    var type: String = "Упражнение для ног"

    func start() {
        print("Начинаем прыжки")
    }

    func stop() {
        print("Заканчиваем прыжки")
    }
}
