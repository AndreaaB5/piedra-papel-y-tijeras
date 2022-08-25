//
//  ViewController.swift
//  Piedrapapeltijeras
//
//  Created by Andrea Beltrán Quintana on 18/08/22.
//

import UIKit

class ViewController: UIViewController {

    var opc:Int = 0
    @IBOutlet var btnRock: UIButton!
    @IBOutlet var btnPaper: UIButton!
    @IBOutlet var btnScissors: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRock.tag = 1
        btnPaper.tag = 2
        btnScissors.tag = 3
    }


    @IBAction func clickSelectOption(_ sender: UIButton) {
        switch sender.tag{
            case 1:
                opc = 1
                break;
            case 2:
                opc = 2
                break;
            case 3:
                opc = 3
                break;
            default:
                break;
        }
        
        let controller: ResultController
        controller = storyboard?.instantiateViewController(identifier: "ResultController") as! ResultController
        controller.opc = opc
        present(controller, animated: true, completion: nil)
    }
}
