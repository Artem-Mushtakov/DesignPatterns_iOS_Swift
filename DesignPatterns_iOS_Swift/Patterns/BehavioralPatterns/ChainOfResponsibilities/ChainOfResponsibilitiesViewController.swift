//
//  ChainOfResponsibilitiesViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 02.09.2022.
//

import UIKit

// Цепочка обязанностей - поведенчиский шаблон проектирования, который проверяет условия по цепочке.

// 1. Создаем протокол Chain на который будут подписанны все обьекты в которых требуется проверка
protocol Chain {
    // следующий обьект для проверки
    var nexStep: Chain? { get }
    // функция где проходит проверка
    func check() -> (isSuccess: Bool, error: String?)
}

class NetworkManager: Chain {

    var nexStep: Chain?

    func check() -> (isSuccess: Bool, error: String?) {

        // Проверяем соединение
        if checkNetwork() {
            if checkConnectionSpeed() < 3 {
                // Проверяем есть ли следующий обьект в цепочке для проверки
                if let nextStep = nexStep?.check() {
                    return (nextStep.isSuccess, nextStep.error)
                } else {
                    return (true, "")
                }
            } else {
                return (false, "Error - недостаточно скорости")
            }
        } else {
            return (false, "Error - нет сети")
        }
    }

    func checkNetwork() -> Bool {
        return true
    }

    func checkConnectionSpeed() -> Double {
        return 10.0
    }
}

class DownloadManager: Chain {

    var nexStep: Chain?

    func check() -> (isSuccess: Bool, error: String?) {
        if isServerAvailible() {
            if let nextStep = nexStep?.check() {
                return (nextStep.isSuccess, nextStep.error)
            } else {
                return (true, "")
            }
        } else {
            return (false, "Ошибка - сервер недоступен")
        }
    }

    func isServerAvailible() -> Bool {
        return true
    }
}

class DeviceManager: Chain {

    var nexStep: Chain?

    func check() -> (isSuccess: Bool, error: String?) {
        if iOSVersion() == "16.0" {
            if let nextStep = nexStep?.check() {
                return (nextStep.isSuccess, nextStep.error)
            } else {
                return (true, "")
            }
        } else {
            return (false, "Ошибка - версия некорректна")
        }
    }

    func iOSVersion() -> String {
        return "16.0"
    }
}

final class ChainOfResponsibilitiesViewController: UIViewController {

    private let networkManager = NetworkManager()
    private let downloadManager = DownloadManager()
    private let deviceManager = DeviceManager()

    private func updateNextStep() {
        networkManager.nexStep = downloadManager
        downloadManager.nexStep = deviceManager

        if networkManager.check().isSuccess {
            print("Обновляем операционную систему")
        }
    }
}
