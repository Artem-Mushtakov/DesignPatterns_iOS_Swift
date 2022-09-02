//
//  VisitorViewController.swift
//  DesignPatterns_iOS_Swift
//
//  Created by Artem Mushtakov on 01.09.2022.
//

import UIKit

class FirstCell: UITableViewCell { /**/ }
class SecondCell: UITableViewCell { /**/ }
class ThirdCell: UITableViewCell { /**/ }

struct HeightResultVisitor {

    func visitCell(_ cell: FirstCell) -> CGFloat {
        return 10.0
    }

    func visitCell(_ cell: SecondCell) -> CGFloat {
        return 20.0
    }

    func visitCell(_ cell: ThirdCell) -> CGFloat {
        return 30.0
    }
}

protocol HeightResultVisitableProtocol {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat
}

extension FirstCell: HeightResultVisitableProtocol {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visitCell(self)
    }
}

extension SecondCell: HeightResultVisitableProtocol {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visitCell(self)
    }
}

extension ThirdCell: HeightResultVisitableProtocol {
    func accept(_ visitor: HeightResultVisitor) -> CGFloat {
        return visitor.visitCell(self)
    }
}

class VisitorViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        registerCell()
    }

    func registerCell() {
        tableView.register(FirstCell.self, forCellReuseIdentifier: "FirstCell")
        tableView.register(SecondCell.self, forCellReuseIdentifier: "SecondCell")
        tableView.register(ThirdCell.self, forCellReuseIdentifier: "ThirdCell")
    }
}

extension VisitorViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /**/ return FirstCell()
    }
}

extension VisitorViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
      //  guard let cell = tableView.cellForRow(at: indexPath) as? HeightResultVisitableProtocol else { return 80 }
        let cell = tableView.cellForRow(at: indexPath) as! HeightResultVisitableProtocol
        return cell.accept(HeightResultVisitor())
    }
}
