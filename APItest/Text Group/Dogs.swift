//
//  Dogs.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/9/30.
//

import Foundation

struct Dogs:Codable{
    let name:String
    let sex: String
    let age: String
    let 品種:String
    let pic:String
    
    static func loadData() ->[Dogs]?{
        let dogiy = UserDefaults.standard
        guard let data = dogiy.data(forKey: "dogss")else {return nil}
        let decoder = JSONDecoder()
        return try? decoder.decode([Dogs].self, from: data)
    }
    
    static func saveData(dogs:[Dogs]){
        let encoder = JSONEncoder()
        guard let data = try? encoder.encode(dogs) else { return }
        UserDefaults.standard.set(data, forKey: "lovers")
    }
    
    
}
