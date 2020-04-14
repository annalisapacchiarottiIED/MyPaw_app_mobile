//
//  Product.swift
//  MyPaw_app
//
//  Created by Annalisa Pacchiarotti on 07/04/2020.
//  Copyright © 2020 Annalisa Pacchiarotti. All rights reserved.
//

import Foundation
import Alamofire



struct Product: Identifiable {

    let id: Int
    let name: String
    let description: String
    let price: Double
    let img: String
    
}




var productsList = [
    Product(id: 1, name:"prodotto 1", description:"questa è la descrizione di questo prodotto bellissimo", price: 200, img: "default_img"),
    Product(id: 2, name:"prodotto 1", description:"questa è la descrizione di questo prodotto bellissimo", price: 200, img: "default_img"),
    Product(id: 3, name:"prodotto 1", description:"questa è la descrizione di questo prodotto bellissimo", price: 200, img: "default_img"),
]

extension Array {
    func chunked(into size: Int) -> [[Element]] {
        return stride(from: 0, to: count, by: size).map {
            Array(self[$0 ..< Swift.min($0 + size, count)])
        }
    }
}

