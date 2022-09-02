//
//  CatalogPresenter.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 31.08.2022.
//

import Foundation

protocol CatalogPresenterProtocol {
    var messageInfo: String { get }
}

class CatalogPresenter: CatalogPresenterProtocol {
    weak var controller: CatalogViewController?
    var messageInfo = "Создать презентер для представления"
}
