//
//  ObserverTwo.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import Foundation

class ObserverTwo: ObserverProtocol {

    func update(subject: NotificationCenters) {
        print("ObserverTwo - \(subject.state)")
    }
}
