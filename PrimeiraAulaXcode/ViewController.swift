//
//  ViewController.swift
//  PrimeiraAulaXcode
//
//  Created by Wladmir Edmar Silva Junior on 22/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.        

        print("Tela carregada")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("A tela vai aparecer")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("A tela apareceu")
    }
}

