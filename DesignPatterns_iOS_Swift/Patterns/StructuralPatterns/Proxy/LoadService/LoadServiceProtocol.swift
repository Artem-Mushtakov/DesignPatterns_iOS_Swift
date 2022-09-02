//
//  LoadServiceProtocol.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 30.08.2022.
//

import Foundation
import UIKit

protocol LoadServiceProtocol {
    func loadImage(url: URL, completion: @escaping (Data?, URLResponse?, Error?) -> ())
}
