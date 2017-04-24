//
//  calculoIMC.swift
//  IMC-NAC
//
//  Created by Usuário Convidado on 24/04/17.
//  Copyright © 2017 Marina. All rights reserved.
//

import Foundation

class CalculoIMC {
    var peso:Double
    var altura:Double
    
    init(peso:Double, altura:Double){
        self.peso = peso
        self.altura = altura
    }
    func imc() -> Double{
        return peso / (altura * altura)
    }
}
