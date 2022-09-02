//
//  ProxyViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 30.08.2022.
//

import UIKit

class ProxyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openImageTapped(_ sender: UIButton) {
        self.navigationController?.pushViewController(ProxyDetailViewController(), animated: true)
    }
}
