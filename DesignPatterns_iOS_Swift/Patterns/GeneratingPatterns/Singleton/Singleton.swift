//
//  Singleton.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import Foundation

class Singleton {

    static let shared = Singleton()

    private init() { }

    func testFunction() {
        print("testFunction Singleton")
    }
}
