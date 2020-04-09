//
//  Product.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 07/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import Foundation

struct Product {
    
    let name: String
    let description: String
    let price: Double
    let product_img: String
}

extension Product {
    static func all() -> [Product] {
        return  [
            Product(name:"prodotto 1", description:"questa è la descrizione di questo prodotto bellissimo", price: 200, product_img: "default_img"),
            Product(name:"prodotto 2", description:"questa è la descrizione di questo prodotto bellissimo", price: 200, product_img: "default_img"),
            Product(name:"prodotto 3", description:"questa è la descrizione di questo prodotto bellissimo", price: 200, product_img: "default_img")
                ]
    }
}
