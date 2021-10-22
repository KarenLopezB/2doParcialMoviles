//
//  ListaIngredientesController.swift
//  2doParcial-KarenLopez
//
//  Created by Alumno on 10/22/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import Foundation
import UIKit

class ListaIngredientesController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 143
    }
    
    var ingredientes : [Ingrediente] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldasIngredientes") as! CeldaIngredientesController
        
        celda.imgIngrediente.image = UIImage (named: ingredientes[indexPath.row].foto)
        celda.lblIngrediente.text = ingredientes[indexPath.row].ingrediente
        return celda
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Ingredientes"
    }
    
    
    
}
