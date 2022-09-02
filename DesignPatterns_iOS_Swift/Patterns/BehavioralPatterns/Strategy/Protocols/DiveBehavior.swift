//
//  DiveBehavior.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import Foundation

protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {

    func dive() {
        print("ProfessionalDiver")
    }
}

class NewbieDiver: DiveBehavior {

    func dive() {
        print("NewbieDiver")
    }
}

class NonDiving: DiveBehavior {

    func dive() {
        print("NonDiving")
    }
}
