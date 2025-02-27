//
//  Item.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


struct Item: CustomStringConvertible {
    var name: String
    var effect: String
    var heal: Int
    var applyBuff: Bool
    var buff: String
    var removeDebuff: Bool
    var debuffOnEnemy: Bool
    var damage: Int
    var quantity: Int
    
    var description: String {
        return """
        Item \(name) hat folgenden Effekt:
        \(effect)
        """
    }
}
