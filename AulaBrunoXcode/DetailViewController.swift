//
//  DetailViewController.swift
//  AulaBrunoXcode
//
//  Created by Wladmir Edmar Silva Junior on 25/03/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var labelDetail: UILabel!

    var textoQueVemDeFora: String?
    var dadosItem: Item?

    override func viewDidLoad() {
        super.viewDidLoad()


        if let dadosItem = dadosItem {

            title = dadosItem.title
            labelDetail.text = dadosItem.descricao
            print(dadosItem)
        }
    }
}
