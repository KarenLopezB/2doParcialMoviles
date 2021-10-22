//
//  Ingredientes.swift
//  2doParcial-KarenLopez
//
//  Created by Alumno on 10/20/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Ingrediente {
    var ingrediente = ""
    var foto = ""
    
    var ingredientes : [Ingrediente] = []
    
    init(ingrediente: String, foto: String) {
        self.ingrediente = ingrediente
        self.foto = foto
    }
}
