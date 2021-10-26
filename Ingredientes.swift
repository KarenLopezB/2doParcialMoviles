//
//  Ingredientes.swift
//  2doParcial-KarenLopez
//
//  Created by Alumno on 10/20/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Ingrediente {
    var descripcion = ""
    var precio = ""
    var ingrediente = ""
    var foto = ""
    /Users/ulsa/Downloads/2doParcialMoviles-main/2doParcial-KarenLopez/Ingredientes.swift
    var ingredientes : [Ingrediente] = []
    
    init(descripcion: String, precio: String, ingrediente: String, foto: String) {
        self.descripcion = descripcion
        self.precio = precio
        self.ingrediente = ingrediente
        self.foto = foto
    }
}
