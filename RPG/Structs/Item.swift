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
    var itemAction: [() -> Void]
    
    var description: String {
        return "\(name) \u{001B}[90m(\(quantity)\u{001B}[90mx) - \(effect)\u{001B}[0m"
    }
    
    mutating func changeQuantity() {
        self.quantity -= 1
    }
}


func changeItemQ(item: Item) -> Item {
    var copy: Item = item
    copy.quantity -= 1
    return copy
}
