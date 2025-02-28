//
//  Loot.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


struct Loot: CustomStringConvertible {
    var name: String
//    var description: String
    var effect: String
    var impact: LootEffect
    var quantity: Int
    
    var description: String {
        return """
        Item \(name) hat folgenden Effekt:
        \(effect)
        """
    }
}
