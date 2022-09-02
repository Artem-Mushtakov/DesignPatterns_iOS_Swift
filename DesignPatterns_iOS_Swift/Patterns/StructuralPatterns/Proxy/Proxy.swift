//
//  Proxy.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 30.08.2022.
//

import Foundation

// свойство cash псевдо кеширование даты
var cash: Data?

class Proxy: LoadServiceProtocol {

    private var service: LoadServiceProtocol

    init(service: LoadServiceProtocol) {
        self.service = service
    }

    func loadImage(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        // если cash nil то делаем загрузку картинки из url и возвращаем ее
        if cash == nil {
            service.loadImage(url: url) { data, response, error in
                    cash = data
                    completion(data, response, error)
            }
        } else {
            // если cash != nil то возвращаем картинку из кэша
            completion(cash, nil, nil)
        }
    }
}
