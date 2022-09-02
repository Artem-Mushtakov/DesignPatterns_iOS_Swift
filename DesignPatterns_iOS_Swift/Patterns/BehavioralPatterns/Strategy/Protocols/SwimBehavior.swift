//
//  SwimBehavior.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import Foundation

protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimer: SwimBehavior {
    
    func swim() {
        print("ProfessionalSwimer")
    }
}

class NonSwimmer: SwimBehavior {
    
    func swim() {
        print("NonSwimmer")
    }
}
