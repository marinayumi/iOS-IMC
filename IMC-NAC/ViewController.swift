//
//  ViewController.swift
//  IMC-NAC
//
//  Created by Usuário Convidado on 24/04/17.
//  Copyright © 2017 Marina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelPeso: UITextField!
    @IBOutlet weak var labelAltura: UITextField!
    @IBOutlet weak var labelResultado: UITextField!
    @IBOutlet weak var labelSexo: UITextField!
    
    var sexo:String = ""
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelSexo.text = sexo
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func doCalculo(_ sender: UIButton) {
        let peso = Double(labelPeso.text!)
        let altura = Double(labelAltura.text!)
        
        let imc = CalculoIMC(peso:peso!, altura:altura!)
        
        labelResultado.text = (NSString(format: "%.2f", imc.imc())) as String
    }
    
    
    @IBAction func escolherSexo(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0{
            labelSexo.text = "Feminino"
        }else{
            labelSexo.text = "Masculino"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        switch segue.identifier!{
        case "segueResultado":
            let objResult = segue.destination as! ResultadoViewController
            objResult.resultado = labelResultado.text!
        default: return;
        }
    }


}

