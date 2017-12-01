//
//  Beer.swift
//  RM31773
//
//  Created by Eduardo Wallace on 21/11/2017.
//  Copyright © 2017 Eduardo Wallace. All rights reserved.
//

import Foundation

class Beer {
    
    var id: Int //referencia
    var name: String //Nome
    var tagline: String //Tagline
    var abv: Double // Teor alcoólico
    var ibu: Double // Escala de amargor
    var description: String //Descrição
    var image_url: String //Imagem da cerveja
    
    init(id: Int, name: String, tagline: String, abv: Double, ibu: Double, description: String, image_url: String) {
        self.id = id
        self.name = name
        self.tagline = tagline
        self.abv = abv
        self.ibu = ibu
        self.description = description
        self.image_url = image_url
    }
    
}
