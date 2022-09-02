//
//  LoadImageService.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 30.08.2022.
//

import Foundation

final class LoadImageService: LoadServiceProtocol {
    
    func loadImage(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ()) {

        let configureSession = URLSessionConfiguration.default
        configureSession.requestCachePolicy = .reloadIgnoringLocalCacheData
        configureSession.urlCache = nil

        let urlSession = URLSession(configuration: configureSession)
        urlSession.dataTask(with: url, completionHandler: completion).resume()
    }
}
