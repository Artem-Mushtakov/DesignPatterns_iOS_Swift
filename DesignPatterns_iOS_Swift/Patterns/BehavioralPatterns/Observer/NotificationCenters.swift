//
//  NotificationCenters.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import Foundation

// 2. Создаем класс для наблюдения за обьектом

class NotificationCenters {

    // 3. обьект за которым наблюдаем(он генерирует любое число до 10)
    var state: Int = {
        return Int(arc4random_uniform(10))
    } ()

    // 4. Создаем массив наблюдателей
    private lazy var observers = [ObserverProtocol]()

    // 5. Создаем функцию подписки на обьект
    func subscribe(_ observer: ObserverProtocol) {
        print(#function)
        observers.append(observer)
    }

    // 6. Создаем функцию отписки
    func unSubscribe(_ observer: ObserverProtocol) {

        if let index = observers.firstIndex(where: { $0 === observer} ) {
            print(#function)
            observers.remove(at: index)
        }
    }

    // 7. Функция уведомления об изменении, перебираем всех наблюдателей и
    // вызываем у них функцию обновления
    func notify() {
        print(#function)
        observers.forEach { $0.update(subject: self) }
    }

    // 8. Функция изменения наблюдаемого обьекта
    func someBusinessLOgic() {
        print(#function)
        state = Int(arc4random_uniform(10))
        notify()
    }
}
