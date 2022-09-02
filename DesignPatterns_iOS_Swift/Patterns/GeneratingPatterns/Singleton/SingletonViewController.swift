//
//  SingletonViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 26.08.2022.
//

import UIKit

class SingletonViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        Singleton.shared.testFunction()
    }
}
