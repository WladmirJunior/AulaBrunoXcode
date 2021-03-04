//
//  ViewController.swift
//  AulaBrunoXcode
//
//  Created by Wladmir Edmar Silva Junior on 26/02/21.
//

import UIKit

struct Item {
    var imageIcon: UIImage
    var title: String
    var clickIcon: UIImage
}

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrayItens: [Item] = [Item(imageIcon: .actions,
                                   title: "Ajuda",
                                   clickIcon: .strokedCheckmark),
                              Item(imageIcon: .remove,
                                   title: "Telefone",
                                   clickIcon: .strokedCheckmark),
                              Item(imageIcon: .add,
                                   title: "Internet",
                                   clickIcon: .strokedCheckmark),
                              Item(imageIcon: .checkmark,
                                   title: "Configurações",
                                   clickIcon: .strokedCheckmark)
    ]

    public var count = 1

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayItens.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        let item = arrayItens[indexPath.row]

        cell.titleLabel.text = item.title
        cell.iconImage.image = item.imageIcon
        cell.clickIcon.image = item.clickIcon
        return cell
    }
}


// MARK: - Métodos de Teste

extension ViewController {
    
    public func addNumber() {
        count += 1
    }

    public func removeNumber() {
        count -= 1
    }
}

