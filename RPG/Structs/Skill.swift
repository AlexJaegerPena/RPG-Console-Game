//
//  Skill.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


struct Skill: CustomStringConvertible {
    var name: String
    var info: String
//    var type: [SkillType]

//    var critTargetValue: Int = 0
    var damageValue: Int = 0
    var defTargetValue: Int = 0
    var apTargetValue: Int = 0
    var healValue: Int = 0
    
//    var critAlliesValue: Int = 0
    var defAlliesValue: Int = 0
    var apAlliesValue: Int = 0
    var critAlliesValue: Int = 0
    var effect: String
    var cooldown: Int = 0
    
    
    var description: String {
        var details = "\u{001B}[1m\(name)\u{001B}[0m: \(info)\n"
        // chatGpt genutzt, um Details zu Info mit += je nach Spezifikation hinzuzufügen
        if damageValue > 0 {
            details += "- Schaden: \(damageValue)\n"
        }
//        if critTargetValue > 0 {
//            details += "- Kritische Trefferquote des Gegners wird um \(critTargetValue) gesenkt\n"
//        }
        if defTargetValue > 0 {
            details += "- Defensive des Gegners wird um \(defTargetValue) gesenkt\n"
        }
        if healValue > 0 {
            details += "- Heilung: \(healValue)\n"
        }
//        if critAlliesValue > 0 {
//            details += "- Kritische Trefferquote erhöht sich um \(critAlliesValue)\n"
//        }
        if defAlliesValue > 0 {
            details += "- Defensive erhöht sich um \(defAlliesValue)\n"
        }

        if cooldown > 0 {
            details += "Cooldown Zeit: \(cooldown) Runden"
        }
        return details
    }
    

}
