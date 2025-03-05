//
//  Rocket.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


// Rocket Klasse
class Engineer: Hero {
    
    var grootDead: Bool = false
    var rageRacoonCounter = 1
    
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [rocketTrapOMatic, rocketGadgetGatling]
        self.action = [trapOMatic, gadgetGatling]
    }
    
    // kann man diesen print auch als Protocol machen?
    func trapOMatic() {
        var target: Character = thanos
        if enemiesFighting.count > 1 {
            print("\u{001B}[95mWelchen Gegner möchtest du angreifen\u{001B}[0m".sTab())
            print()
            for (index, enemy) in enemiesFighting.enumerated() {
                print("[\(index + 1)] \(enemy.name)".sTab())
            }
                    let input = chooseOptionEnemy()
                target = enemiesFighting[input - 1]
        }
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)".sTab())
        target.state = .trapped
    }
    
    func gadgetGatling() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)".sTab())
        for enemy in enemiesFighting {
            var damageDone = rocketGadgetGatling.damageValue * ap - enemy.def
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
            }
        }
    }
 
    
    // Methode, die prüft ob groot tot ist und dann den Skill zum skill array hinzufügt
    func isGrootDead() {
        let newSkill: Skill = rocketRageOfTheRacoon
        let newAction: () -> Void = rageOfTheRacoon
            skill.insert(newSkill, at: 2)
            action.insert(newAction, at: 2)
    }
    
    
    func rageOfTheRacoon() {
        print("\(name) \u{001B}[92mentfesselt von der Wut und dem Schmerz über Groots Opfer \(skill[2].name)\u{001B}[0m. \(skill[2].effect)".sTab())
        for enemy in enemiesFighting {
            var damageDone = rocketRageOfTheRacoon.damageValue * ap - enemy.hp
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
            }
        }
        print("\(name)`s Entschlossenheit spornt die anderen Helden an.".sTab())
        for hero in heroesFighting {
            hero.ap += rocketRageOfTheRacoon.apAlliesValue
        }
        rageRacoonCounter -= 1
        if rageRacoonCounter == 0 {
            skill.remove(at: 2)
            action.remove(at: 2)
        }
    }
}
