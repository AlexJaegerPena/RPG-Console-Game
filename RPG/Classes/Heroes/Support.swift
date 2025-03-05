//
//  Groot.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation



// Groot Klasse
class Support: Hero {
    
    override var state: State {
        didSet {
            if oldValue != state {
                print("\(name) ist \(state.rawValue)".sTab())
            }
            if oldValue == .dead {
                rocket.isGrootDead()
            }
            
        }
    }
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [grootLifeBloom, grootRootSlam, grootWeAreGroot]
        self.action = [lifeBloom, rootSlam, weAreGroot]
    }
    
    
    
    
    func lifeBloom() {
        print("\(name) wirkt \(skill[0].name). \(skill[0].effect)".sTab())
        for hero in heroesFighting {
            hero.hp += grootLifeBloom.healValue
            hero.def += grootLifeBloom.defAlliesValue
        }
    }
    
    func rootSlam() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)".sTab())
        for enemy in enemiesFighting {
            var damageDone = grootRootSlam.damageValue * ap - enemy.def
            if damageDone < enemy.def {
                damageDone = 1
            }
            if damageDone > enemy.hp {
                enemy.hp = 0
                print("Der Gegner wurde besiegt.".sTab())
                enemiesFighting.removeAll { enemy in
                    return enemy.hp == 0
                }
            } else {
                enemy.hp -= damageDone
                enemy.def -= grootRootSlam.defTargetValue
                enemy.state = .stunned
            }
        }
        for hero in heroesFighting {
            hero.ap += grootRootSlam.apAlliesValue
        }
    }
    
    func weAreGroot() {
        print("\(name) wirkt \(skill[2].name). \(skill[2].effect)".sTab())
        sleep(1)
        print("""
               
                  🍂  \u{001B}[32mWE ARE GROOT  🍂 

        """.sTab())
        sleep(2)
        print("\u{001B}[0mGroot hat sich selbst geopfert und scheidet aus dem Kampf aus".sTab())
        hp = 0
        state = .dead
        rocket.isGrootDead()
        sleep(1)
        print("\u{001B}[32m\(rocket.name) \u{001B}[92m erhält durch Groot's Tod einen neuen Skill\u{001B}[0m".sTab())
        heroesFighting.removeAll(where: {$0.name == name})
        for hero in heroesFighting {
            if hero.name == name {
                continue
            }
            if hero.hp > 0 {
                hero.state = .healed
                hero.hp = hero.maxHp
                hero.def += grootWeAreGroot.defAlliesValue
            }
            
        }
        print("Keine Helden zum Heilen übrig.".sTab())
    }
}
