//
//  Datos.swift
//  PM2_storyboardConexionAPI
//
//  Created by Gerardo on 19/02/20.
//  Copyright © 2020 Gerardo. All rights reserved.
//

import Foundation

// funcion que permite codificar y decodificar informacion a enviar
final class Datos:Codable {
    var id:Int?
    //variables que se tienen en la API
    var post_title:String
    var information:String
    
    init(title:String, information:String){
        self.post_title = title
        self.information = information
    }
}
