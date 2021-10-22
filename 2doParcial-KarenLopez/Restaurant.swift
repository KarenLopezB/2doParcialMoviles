//
//  Restaurant.swift
//  2doParcial-KarenLopez
//
//  Created by Alumno on 10/13/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation

class Restaurant {
    
    var nombre = ""
    var descripcion = ""
    var precio = ""
    var foto = ""
    
    var ingredientes : [Ingrediente] = []
    
    init(nombre: String, descripcion: String, precio: String, foto: String, ingredientes: [Ingrediente]) {
        self.nombre = nombre
        self.descripcion = descripcion
        self.precio = precio
        self.foto = foto
        self.ingredientes = ingredientes
    }
}
