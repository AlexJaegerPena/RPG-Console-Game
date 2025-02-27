//
//  Character.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation



    // Superclass
    class Character: CustomStringConvertible {
        var name: String
        var hp: Int
        var ap: Int
        var crit: Int
        var def: Int
        
        var debuff: String
        var hasDebuff: Bool
        var description: String {
            return """
                \(name)
                HP: \(hp)
                AP: \(ap)
                Crit: \(crit)
                Defense: \(def)
                Debuff: \(debuff)
                """
        }
        
        init(name: String, hp: Int, ap: Int, crit: Int, def: Int, debuff: String, hasDebuff: Bool) {
            self.name = name
            self.hp = hp
            self.ap = ap
            self.crit = crit
            self.def = def
            self.debuff = debuff
            self.hasDebuff = hasDebuff
        }
        
        
        // Standardangriff
        func standardAttack() {
            print("Welchen Angriff soll \(name) ausführen?")
//            print("1. \()")
        }
                
        // Spezialattacke
        func specialAttack() {
            // wenn random in 1...5 kommt die attacke und greift alle an und paralysiert 2 helden zufällig
        }
    }
    
