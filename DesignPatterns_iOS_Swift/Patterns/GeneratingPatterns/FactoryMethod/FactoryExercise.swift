//
//  FactoryExercise.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import Foundation

// 4. Создаем енам с типами упражнений
enum Exercises {
    case jumping
    case squarts
}

// 5. Создаем фаьрику которая будет создавать обьекты
final class FactoryExercise {

    // 6. Для наглядности создал сингл тон для быстрого доступа к фабрике
    static let defaultFactory = FactoryExercise()

    // 7. Создаем функцию создания обьектов на основе енама типов упражнений
    func createExercise(name: Exercises) -> ExersiceProtocol {

        // 8. В зависимости от типа упражнения возвращаем тип обьекта
        switch name {
        case .jumping:
            return Jumping()
        case .squarts:
            return Squarts()
        }
    }
}
