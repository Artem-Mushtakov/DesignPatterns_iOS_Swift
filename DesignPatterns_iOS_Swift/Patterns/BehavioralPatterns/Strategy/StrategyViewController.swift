//
//  StrategyViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import UIKit

// Стратегия поведенчиский паттерн, позволяет нам динамически менять логику объекта(функций)
// Как реализовать: к примеру у нас есть человек который умеет бегать плавать и ездить, методы плавать и бегать у всех разные,
// создаем протоколы для реализации этих методов, реализуем разлиыные варианты работы методов(плавать и ездить),
// в суппер класе создаем два свойства для конформа к обьектам протокола, и две функции для динамического изменинения работы функций.

final class StrategyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let human = Human(diveBehavior: NewbieDiver(), swimBehavior: NonSwimmer())

        human.performDive()
        human.performSwim()

        human.setPerformDive(diveBehaivor: NonDiving())
        human.setPerformSwim(swimBehavior: NonSwimmer())
    }
}
