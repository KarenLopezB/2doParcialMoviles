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
        
        restaurantes.append(Restaurant(nombre: "Pozole mío", descripcion: "Plato hondo con pozole rojo, caldo hecho a base de granos de maíz y carne de cerdo, con verdura como: lechuga, cebolla, cilantro, rodajas de rábano, acompañado de tostadas.", precio: "$70.00 MX", foto: "pozoleprin", ingredientes: [
            Ingrediente(ingrediente: "Granos de maiz", foto: "pozole1"),
            Ingrediente(ingrediente: "Carne de puerco", foto: "pozole2"),
            Ingrediente(ingrediente: "Lechuga", foto: "pozole3"),
            Ingrediente(ingrediente: "Rabano", foto: "pozole4"),
            Ingrediente(ingrediente: "Cebolla", foto: "pozole5")
            ]))
        restaurantes.append(Restaurant(nombre: "La Mole", descripcion: "Platillo de mole rojo de pollo, acompañado de arroz rojo y tortillas de maíz.", precio: "$60.00 MX", foto: "moleprin", ingredientes: [
            Ingrediente(ingrediente: "Pollo", foto: "mole1"),
            Ingrediente(ingrediente: "Mole", foto: "mole2"),
            Ingrediente(ingrediente: "Arroz rojo", foto: "mole3"),
            Ingrediente(ingrediente: "Tortillas de maiz", foto: "mole4")
            ]))
        restaurantes.append(Restaurant(nombre: "Gordibuenas", descripcion: "Gordita de carne deshebrada o chicharrón, con verdura como: lechuga y cebolla, con queso y crema, salsa al gusto.", precio: "$25.00 MX", foto: "gorditasprin", ingredientes: [
            Ingrediente(ingrediente: "Harina de maiz", foto: "gorditas1"),
            Ingrediente(ingrediente: "Carne de res", foto: "gorditas2"),
            Ingrediente(ingrediente: "Queso rallado", foto: "gorditas3"),
            Ingrediente(ingrediente: "Crema", foto: "gorditas4"),
            Ingrediente(ingrediente: "Lechuga", foto: "gorditas5")
            ]))
        restaurantes.append(Restaurant(nombre: "Taco pal corazón", descripcion: "Taco de barbacoa de res, acompañado con cilantro y cebolla, hecho con tortilla de maíz.", precio: "$20.00 MX", foto: "tacosprin", ingredientes: [
            Ingrediente(ingrediente: "Carne de res", foto: "tacos1"),
            Ingrediente(ingrediente: "Tortilla de maiz", foto: "tacos2"),
            Ingrediente(ingrediente: "Cilantro", foto: "tacos3"),
            Ingrediente(ingrediente: "Cebolla", foto: "tacos4")
            ]))
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! ListaIngredientesController
        destino.ingredientes = restaurantes[tvRestaurantes.indexPathForSelectedRow!.row].ingredientes
    }

}

