//
//  ViewController.swift
//  2doParcial-KarenLopez
//
//  Created by Alumno on 10/11/21.
//  Copyright © 2021 Alumno. All rights reserved.
//

import UIKit

class ListaRestaurantesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRestaurant") as! CeldaRestaurantController
        
        celda.imgComida.image = UIImage(named: restaurantes[indexPath.row].foto)
        celda.lblNombre.text = restaurantes[indexPath.row].nombre
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 183
    }
    

    var restaurantes : [Restaurant] = []
    
    @IBOutlet weak var tvRestaurantes: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "¡Fierro Pariente!"
        
        restaurantes.append(Restaurant(nombre: "Pozole mío", descripcion: "Plato hondo con pozole rojo, caldo hecho a base de granos de maíz y carne de cerdo, con verdura como: lechuga, cebolla, cilantro, rodajas de rábano, acompañado de tostadas.", precio: "$70.00 MX"))
        restaurantes.append(Restaurant(nombre: "La Mole", descripcion: "Platillo de mole rojo de pollo, acompañado de arroz rojo y tortillas de maíz.", precio: "$60.00 MX"))
        restaurantes.append(Restaurant(nombre: "Gordibuenas", descripcion: "Gordita de carne deshebrada o chicharrón, con verdura como: lechuga y cebolla, con queso y crema, salsa al gusto.", precio: "$25.00 MX"))
        restaurantes.append(Restaurant(nombre: "Taco pal corazón", descripcion: "Taco de barbacoa de res, acompañado con cilantro y cebolla, hecho con tortilla de maíz.", precio: "$20.00 MX"))
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesRestaurantController
        destino.restaurant = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row]
    }

}

