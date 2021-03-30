//
//  DogViewController.swift
//  AulaBrunoXcode
//
//  Created by Wladmir Edmar Silva Junior on 30/03/21.
//

import UIKit

class DogViewController: UIViewController {

    @IBOutlet weak var dogImage: UIImageView!

    // Formas para declarar um Dicionário
    let dicionarioJson1: Dictionary<String, String> = [:]
    let dicionarioJson2: [String: String] = [:]
    let dicionarioJson3 = ["chave": "valor"]

    override func viewDidLoad() {
        super.viewDidLoad()

//        downloadLink()
        downloadImage()
    }

    private func downloadLink() {
        let url = URL(string: "https://dog.ceo/api/breeds/image/random")!

        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Erro na requisição: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                return
            }
            //            print("Dados da requisição: \(response)")

            print("Objeto que foi retornado do servidor: \(data)")

            print("\nData convertido para String: \n")
            let stringData = String(data: data, encoding: .utf8) ?? ""
            print(stringData)

            print("\nData convertido para Json: \n")
            do {
                let jsonData = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed) as! [String: String]
                print(jsonData)

                let linkImagem = jsonData["message"]
                print("Link da imagem: \(linkImagem ?? "")")
            } catch {
                print("Erro de conversão: \(error)")
            }
        }.resume()
    }

    private func downloadImage() {
        let url = URL(string: "https://images.dog.ceo/breeds/malamute/n02110063_7630.jpg")!
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                print("Erro na requisição: \(error.localizedDescription)")
                return
            }

            guard let data = data else {
                return
            }

            if let image = UIImage(data: data) {
                // mostrar a imagem pro usario
                DispatchQueue.main.async {
                    self.dogImage.image = image
                }
            } else {
                print("Erro ao converter imagem")
            }
        }.resume()
    }
}

