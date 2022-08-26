//
//  ViewController.swift
//  Piedrapapeltijeras
//
//  Created by Andrea Beltrán Quintana on 18/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Piedra: UIButton!
    @IBOutlet weak var papel: UIButton!
    @IBOutlet weak var Tijeras: UIButton!
    @IBOutlet weak var Jugador: UILabel!
    @IBOutlet weak var Computadora: UILabel!
    @IBOutlet weak var otravez: UIButton!
    @IBOutlet weak var resultado: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        applyShadowAndCornerRadiousTo(button: Piedra)
        applyShadowAndCornerRadiousTo(button: papel)
        applyShadowAndCornerRadiousTo(button: Tijeras)
        applyShadowAndCornerRadiousTo(button: otravez)
    
    }
    
    
    @IBAction func tappedButton(_ sender: UIButton) {
        Jugador.text = sender.titleLabel?.text!
        otravez.isHidden = false
        Piedra.isHidden = true
        papel.isHidden = true
        Tijeras.isHidden = true
        
        resultado.text = Ganador(choice: sender.currentTitle!)
    }
    
    @IBAction func tappedotravez(_ sender: UIButton) {
        sender.isHidden = true
        Piedra.isHidden = false
        papel.isHidden = false
        Tijeras.isHidden = false
        
        Jugador.text = "Elección:"
        Computadora.text = "Elección:"
    }
    
    func applyShadowAndCornerRadiousTo(button: UIButton) {
        button.layer.cornerRadius = 15
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
    }
    
    func Ganador(choice: String) -> String {
        let eleccioncompu: [String] = ["👊", "✋", "✌"]
        
        let elc = eleccioncompu.randomElement()
        
        Computadora.text = elc
        
        switch choice {
        case"👊":
            switch elc {
            case"👊":
                return "empate"
            case"✋":
                 return "perdiste :("
            case"✌":
                return "ganaste :)"
            default:
                return "No se encontró el elemento que buscabas"
            }
        case"✋":
            switch elc {
            case"👊":
                return "ganaste :)"
            case"✋":
                 return "empate"
            case"✌":
                return "perdiste :("
            default:
                return "No se encontró el elemento que buscabas"
            }
        case"✌":
            switch elc {
            case"👊":
                return "perdiste :("
            case"✋":
                 return "ganaste :)"
            case"✌":
                return "empate"
            default:
                return "No se encontró el elemento que buscabas"
            }
        default:
            return "No se encontró el elemento que buscabas"
        }
    }
}
