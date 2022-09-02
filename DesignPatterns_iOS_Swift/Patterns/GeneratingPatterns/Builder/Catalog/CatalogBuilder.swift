//
//  CatalogBuilder.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 31.08.2022.
//

import UIKit

class CatalogBuilder: ModuleBuilderProtocol {

    var title: String?

    func setTitle(_ title: String) -> CatalogBuilder {
        self.title = title
        return self
    }

    func build() -> UIViewController {
        guard let title = title else { fatalError("Вы должны добавить title") }
        let presenter = CatalogPresenter()
        let interactor = CatalogInteractor(presenter: presenter)
        let viewController = CatalogViewController(title: title, interactor: interactor)
        presenter.controller = viewController
        return viewController
    }
}
