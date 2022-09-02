//
//  ObserverViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import UIKit

// Observer - поведенческий паттер проектирования, который позволяет одним обьектам наблюдать и реагировать на изменения других
// через механизм подписки. Механизм позволяет наблюдать множеству обьектов за одним обьектом и реагировать на его изменение.

// 10. Наш класс ObserverViewController подписан под протокол ObserverProtocol
// соответственно он будет первым наблюдателем
class ObserverViewController: UIViewController, ObserverProtocol {

    @IBOutlet weak var outOneLabel: UILabel!

    // 9. Создаем обьект для наблюдения
    let notificationCenters = NotificationCenters()

    // 11. Создаем второго наблюдателя
    let observerOne = ObserverTwo()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // 12. Функция протокола ObserverProtocol для обновления изменений от состояния наблюдаемого обьекта
    func update(subject: NotificationCenters) {
        outOneLabel.text = "State subject - \(subject.state)"
    }

    // 13. Изменение наблюдаемого обьекта
    @IBAction func updateAction(_ sender: Any) {
        notificationCenters.someBusinessLOgic()
    }

    // 14. Подписка отписка от обьекта
    @IBAction func subscribeSwitch(_ sender: UISwitch) {
        if sender.isOn {
            notificationCenters.subscribe(self)
            notificationCenters.subscribe(observerOne)
        } else {
            notificationCenters.unSubscribe(self)
            notificationCenters.unSubscribe(observerOne)
        }
    }
}
