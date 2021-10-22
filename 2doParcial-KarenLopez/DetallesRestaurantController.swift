//
//  DetallesRestaurantController.swift
//  2doParcial-KarenLopez
//
//  Created by Alumno on 10/14/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class DetallesRestaurantController : UIViewController {
    @IBOutlet weak var lblDescripcion: UILabel!
    @IBOutlet weak var lblPrecio: UILabel!
    
    var restaurant : Restaurant = Restaurant(nombre: "", descripcion: "", precio: "")
    
    override func viewDidLoad() {
        self.title = restaurant.nombre
        lblDescripcion.text = restaurant.descripcion
        lblPrecio.text = restaurant.precio
    }
}
