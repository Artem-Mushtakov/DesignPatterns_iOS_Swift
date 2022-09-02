//
//  CatalogViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 31.08.2022.
//

import UIKit

// Builder шаблон проктирования который отвечает за многоуровневое создание обьекта

final class CatalogViewController: UIViewController {

    let interactor: CatalogInteractorProtocol

    init(title: String, interactor: CatalogInteractorProtocol) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
        self.title = title
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
    }
}
