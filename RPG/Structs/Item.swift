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
    var damageValue: Int = 0
    var defTargetValue: Int = 0
    var apTargetValue: Int = 0
    var healValue: Int = 0
    var changeStatus: State = .healed
    var defAlliesValue: Int = 0
    var apAlliesValue: Int = 0
    var critAlliesValue: Int = 0
    var quantity: Int
    
    var description: String {
        return """
        Item \(name) hat folgenden Effekt:
        \(effect)
        """
    }
}
