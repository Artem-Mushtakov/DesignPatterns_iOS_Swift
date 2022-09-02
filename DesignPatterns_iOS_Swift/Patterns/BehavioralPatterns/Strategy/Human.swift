//
//  Human.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import Foundation

class Human {

    private var diveBehavior: DiveBehavior
    private var swimBehavior: SwimBehavior

    init(diveBehavior: DiveBehavior, swimBehavior: SwimBehavior) {
        self.diveBehavior = diveBehavior
        self.swimBehavior = swimBehavior
    }

    func setPerformSwim(swimBehavior: SwimBehavior) {
        self.swimBehavior = swimBehavior
    }

    func setPerformDive(diveBehaivor: DiveBehavior) {
        self.diveBehavior = diveBehaivor
    }

    func performSwim() {
        swimBehavior.swim()
    }

    func performDive() {
        diveBehavior.dive()
    }

    func run() {
        print("Run")
    }
}
