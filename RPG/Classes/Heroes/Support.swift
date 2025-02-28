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
                print("\(name) ist \(state.rawValue)")
            }
            if oldValue == .dead {
                rocket.isGrootDead()
            }
            
        }
    }
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [grootLifeBloom, grootRootSlam, grootWeAreGroot]
        self.action = [lifeBloom, rootSlam, weAreGroot]
    }
    
    
    
    
    func lifeBloom() {
        print("\(name) wirkt \(skill[0].name). \(skill[0].effect)")
        for hero in heroesArray {
            hero.hp += grootLifeBloom.healValue
            hero.def += grootLifeBloom.defAlliesValue
        }
    }
    
    func rootSlam() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            var damageDone = grootRootSlam.damageValue * ap - enemy.def
            if damageDone < enemy.def {
                damageDone = 1
            }
            if damageDone > enemy.hp {
                enemy.hp = 0
                print("Der Gegner wurde besiegt.")
                enemiesArray.removeAll { enemy in
                    return enemy.hp == 0
                }
            } else {
                enemy.hp -= damageDone
                enemy.def -= grootRootSlam.defTargetValue
                enemy.state = .stunned
            }
        }
        for hero in heroesArray {
            hero.ap += grootRootSlam.apAlliesValue
        }
    }
    
    func weAreGroot() {
        print("\(name) wirkt \(skill[0].name). \(skill[0].effect).")
        print("Groot hat sich selbst geopfert und scheidet aus dem Kampf aus")
        hp = 0
        state = .dead
        rocket.isGrootDead()
        heroesArray.removeAll(where: {$0.name == name})
        for hero in heroesArray {
            if hero.name == name {
                continue
            }
            hero.state = .healed
            hero.hp += grootWeAreGroot.healValue
            hero.def += grootWeAreGroot.defAlliesValue
        }
    }
}
