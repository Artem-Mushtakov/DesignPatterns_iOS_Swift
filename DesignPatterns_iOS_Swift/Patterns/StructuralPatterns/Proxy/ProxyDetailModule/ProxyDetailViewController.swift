//
//  ProxyDetailViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 30.08.2022.
//

import UIKit

// Proxy структурный паттерн, который в зависимости от условий возвращает обьект определенного типа.
// Proxy это промежуточный обьект который в зависимости от условий прописанных в нем возвращает обьект

final class ProxyDetailViewController: UIViewController {

    let urlImage = URL(string: "https://www.planetware.com/photos-large/F/france-paris-eiffel-tower.jpg")
    @IBOutlet weak var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadImage()
    }

    private func loadImage() {
        guard let url = urlImage else { return }
        let imageService = LoadImageService()
        let proxy = Proxy(service: imageService)

        // обращаемся к прокси и запрашиваем картинку, в зависимости от условий он загрузит или вернет с кэша картинку
        proxy.loadImage(url: url) { [weak self] data, response, error in
            guard let self = self, let data = data, error == nil else { return }
            DispatchQueue.main.async {
                self.imageView.image = UIImage(data: data)
            }
        }
    }
    
    @IBAction func refreshImageTapped(_ sender: UIButton) {
        cash = nil
        imageView.image = nil
        loadImage()
    }
}
