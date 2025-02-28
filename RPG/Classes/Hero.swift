//
//  Hero.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


class Hero: Character {

    var xp: Int = 0
    var lvl: Int = 1
    var regroup: Bool = false
    var bag: Bag = bagForAll
    override var hp: Int {
        didSet {
                if oldValue < hp/2 {
                    print("❕HP ist bei unter 50%")
                }
            if oldValue < hp/4 {
                print("❗️HP ist bei unter 25%")
            }
            if oldValue < hp/100*15 {
                print("‼️ HP ist bei unter 15%")
            }
            if oldValue <= 0 {
                heroesArray.removeAll(where: {$0.hp == 0})
            }
            }
        
    }
    
    override var description: String {
        let skillNames = skill.map { $0.name }.joined(separator: ", ")
        return """
            \(name)
            HP: \(hp)
            AP: \(ap)
            Defense: \(def)
            Skills: \(skillNames)
            """
    }
    
    init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(name: name, hp: hp, ap: ap, crit: crit, def: def, skill: skill, action: action)
//        self.action = [gatherPowerFunc]
    }

   
    
    // Angriff auswählen
    func selectAttack() {
        print("╭─────────────────────────╮")
        print("│   Wähle einen Angriff:  │")
        print("╰─────────────────────────╯")
        for (index, skill) in skill.enumerated() {
            print("""
            [\(index + 1)] \(skill.name)
            \t\t➤ Info: \"\(skill.info)\"
            \t\t➤ Effekt: \(skill.effect)
            \t\t➤ Cooldown: \(skill.cooldown)
            
            """)
        }
    }
    
    func attackAll() {
        print("\(name) greift mit \(skill[1].name) an und \(skill[1].effect)")
        for hero in heroesArray {
            hero.hp -= skill[1].damageValue
        }
    }
    
    
    
    
    func selectItem() {
        print("╭───────────────────────╮")
        print("│    Wähle ein Item:    │")
        print("╰───────────────────────╯")
        for (index, item) in bag.item.enumerated() {
            if item.quantity > 0 {
                print("""
                [\(index + 1)] \(item.name) 
                \t\t➤ Effekt: \"\(item.effect)\" 
                \t\t➤ Anzahl: \(item.quantity)
                
                """)
            }
        }
        
    }
        
    // attacke wenn Guardians regroup haben
    func gatherPowerFunc() {
        print("Der Held zicht sich aus der Kampfrunde zurück um gestärkt in die nächste Runde zu kommen.")
    }
        
        // Attacke wenn alle Guardians regroup haben - AP von allen * 1.1 - 2
        func groupAttack() {
            
        }
    
    
}
