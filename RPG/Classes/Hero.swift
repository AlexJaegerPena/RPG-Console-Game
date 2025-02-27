//
//  Hero.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


class Hero: Character {

    var xp: Int
    var lvl: Int
    var buff: String
    var hasBuff: Bool
    var regroup: Bool
    
    override var description: String {
        return """
            \(name)
            HP: \(hp)
            AP: \(ap)
            Crit: \(crit)
            Defense: \(def)
            Buff: \(buff)
            Debuff: \(debuff)
            """
    }
    
    init(xp: Int, lvl: Int, buff: String, hasBuff: Bool, regroup: Bool, name: String, hp: Int, ap: Int, crit: Int, def: Int, debuff: String, hasDebuff: Bool) {
        self.xp = xp
        self.lvl = lvl
        self.buff = buff
        self.hasBuff = hasBuff
        self.regroup = regroup
        super.init(name: name, hp: hp, ap: ap, crit: crit, def: def, debuff: debuff, hasDebuff: hasDebuff)
    }
    
    
    // Standardangriff
   override func standardAttack() {
        
    }
    
    
    // Spezialattacke
    override func specialAttack() {
        
    }
    
    
    // Item auswählen
    func item() {
        
    }
    
    // attacke wenn mind 2 Guardians regroup haben
    func groupAttack() {
        
    }
    
    // Attacke wenn alle Guardians regroup haben - AP von allen * 1.1 - 2
    func guardiansAssemble() {
        
    }
    
    
}
