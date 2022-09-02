//
//  Observer.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import Foundation

// 1. Создаем протокол наблюдателя, в нем реализуем функцию update для того,
// что-бы мы могли сообщать об обновлениях обьекта.
protocol ObserverProtocol: AnyObject {
    func update(subject: NotificationCenters)
}
