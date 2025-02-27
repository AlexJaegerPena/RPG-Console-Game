//
//  Skill.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


struct Skill: CustomStringConvertible {
    var name: String
    var damageValue: Int
    var healValue: Int
    var critValue: Int
    var defValue: Int
    var effect: String?
    var cooldown: Int
    
    var description: String {
        return """
        \(name) verursacht folgende Effekte:

        """
    }
    
    
    func useSkill() {
        
    }
}
