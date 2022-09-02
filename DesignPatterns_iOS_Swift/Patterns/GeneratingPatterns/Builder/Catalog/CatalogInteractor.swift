//
//  CatalogInteractor.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 31.08.2022.
//

import Foundation

protocol CatalogInteractorProtocol {
    init(presenter: CatalogPresenterProtocol)
}

class CatalogInteractor: CatalogInteractorProtocol {

    var presenter: CatalogPresenterProtocol

    // Бизнес логика
    
    required init(presenter: CatalogPresenterProtocol) {
        self.presenter = presenter
    }
}
