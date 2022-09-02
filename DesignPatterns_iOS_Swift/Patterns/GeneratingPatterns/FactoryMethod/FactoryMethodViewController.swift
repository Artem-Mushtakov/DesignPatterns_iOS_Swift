//
//  FactoryMethodViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import Foundation
import UIKit

// Фабричный метод
// Пораждающий паттерн, который определяет общий интерфейс создания обьектов в суперклассе,
// позволяя подкласам измнять тип создаваемого обьекта

// Плюсы: избовляет класс привязыватся к одному типу обьекта
// Минусы:

final class FactoryMethodViewController: UIViewController {

    // 9. Создаем массив упражнений
    var exerciseArray = [ExersiceProtocol]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // 11. Создание обьектов через фабрику
        createExercise(exName: .jumping)
        createExercise(exName: .squarts)

        // 12. Запуск упражнений
        runExercise()
    }

    // 10. Создаем функцию создания обьектов
    private func createExercise(exName: Exercises) {
        let newExersice = FactoryExercise.defaultFactory.createExercise(name: exName)
        exerciseArray.append(newExersice)
    }

    // 11. Создаем функцию где используя функцию обьекта start начинаем выполнение упражнения
    private func runExercise() {
        exerciseArray.forEach { exercise in
            exercise.start()
        }
    }

    private func stopExercise() {
        exerciseArray.forEach { exercise in
            exercise.stop()
        }
    }
}
