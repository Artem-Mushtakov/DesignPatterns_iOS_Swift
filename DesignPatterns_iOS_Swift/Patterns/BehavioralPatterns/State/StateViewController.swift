//
//  StateViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import UIKit

// Состояние - поведенческий паттерн позволяет реагировать на различные состояния обьекта

protocol State {
    func doAction(completion: ((State) -> ())?)
}

class StartLoadState: State {
    func doAction(completion: ((State) -> ())?) {
        completion?(ProgressLoadState())
        print("ProgressLoadState")
    }
}

class ProgressLoadState: State {
    func doAction(completion: ((State) -> ())?) {
        completion?(FinishLoadState())
        print("FinishLoadState")
    }
}

class FinishLoadState: State {
    func doAction(completion: ((State) -> ())?) {
        completion?(StartLoadState())
        print("StartLoadState")
    }
}

class StateViewController: UIViewController {

    var currentState: State?

    let startLoadState = StartLoadState()
    let progressLoadState = ProgressLoadState()
    let finishLoadState = FinishLoadState()

    override func viewDidLoad() {
        super.viewDidLoad()

        startLoadState.doAction { [weak self] state in
            self?.currentState = state
            print("---- \(state)")
        }

        progressLoadState.doAction { [weak self] state in
            self?.currentState = state
            print("---- \(state)")
        }

        finishLoadState.doAction { [weak self] state in
            self?.currentState = state
            print("---- \(state)")
        }

        doAction()
    }

    func doAction() {
        print("StateViewController state")
        currentState?.doAction { [weak self] state in
            self?.currentState = state
        }
    }
}
