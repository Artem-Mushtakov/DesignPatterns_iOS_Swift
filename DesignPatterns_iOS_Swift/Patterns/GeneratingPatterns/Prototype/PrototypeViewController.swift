//
//  PrototypeViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 29.08.2022.
//

import UIKit

// Портотип Пораждающий паттерн, который позволяет нам копировать ссылочные типы
// создавая новый аналогичный обьект

class PrototypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray

        // 5. Создаем обьект CarBMW
        let bmwX5 = CarBMW(name: "X5")

        // 6. Копируем обьект bmwX5
        let copyBmwX5 = bmwX5.copyObject()
        print(copyBmwX5)
    }
}

// 1. Создаем протокол для копирования
public protocol CopyObject {
    init(_ prototype: Self)
}

// 2. Реализуем ункцию копирования
extension CopyObject {

    public func copyObject() -> Self {
        return type(of: self).init(self)
    }
}

// 3. Создаем класс который подписан на протокол копирования и реализуем его
class CarBMW: CopyObject {

    var name: String

    init(name: String) {
        self.name = name
    }

    // 4. Обязательный инициализатор для копирования обьекта
    required convenience init(_ prototype: CarBMW) {
        self.init(name: prototype.name)
    }
}

// Дополнительно:
// Тк array использует copy on write, также для копирования можно реализовать расширение
extension Array where Element: CopyObject {
    public func copyArray() -> [Element] {
        return map {  $0.copyObject() }
    }
}
