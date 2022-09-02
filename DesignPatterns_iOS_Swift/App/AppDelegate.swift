//
//  AppDelegate.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
//        let factoryMethod = FactoryMethodViewController()
//        let singelton = SingletonViewController()
//        let builder = CatalogBuilder().setTitle("Builder").build()
//        let observer = ObserverViewController()
//        let proxy = UINavigationController(rootViewController: ProxyViewController())
//        let visitor = VisitorViewController()
//        let state = StateViewController()
          let chainResponsobility = ChainOfResponsibilitiesViewController()
        window?.rootViewController = chainResponsobility
        window?.makeKeyAndVisible()
        return true
    }
}
