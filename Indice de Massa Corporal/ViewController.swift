//
//  ViewController.swift
//  Indice de Massa Corporal
//
//  Created by SharonLi on 27/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldWeight: UITextField!
    @IBOutlet weak var textFieldHeight: UITextField!
    @IBOutlet weak var labelResult: UILabel!
    @IBOutlet weak var imageViewResult: UIImageView!
    @IBOutlet weak var viewResult: UIView!
    
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculate(_ sender: Any) {
        if let height = Double(textFieldHeight.text!), let weight = Double(textFieldWeight.text!) {
            imc = weight / (height*height)
            showResult()
        }
    }
    
    func showResult() {
        var image: String = ""
        var result: String = ""
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = "abaixo"
        case 16..<18.5:
            result = "Abaixo do peso"
            image = "abaixo"
        case 18.5..<25:
            result = "Peso ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
        }
        
        labelResult.text = result
        imageViewResult.image = UIImage(named: image)
        viewResult.isHidden = false
    }
}
