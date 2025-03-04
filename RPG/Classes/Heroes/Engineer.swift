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
    var rageRacoonCounter = 3
    
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [rocketTrapOMatic, rocketGadgetGatling]
        self.action = [trapOMatic, gadgetGatling]
    }
    
    // kann man diesen print auch als Protocol machen?
    func trapOMatic() {
        var target: Character = thanos
        if enemiesArray.count > 1 {
           print("Welchen Gegner möchtest du angreifen")
            for (index, enemy) in enemiesArray.enumerated() {
                print("[\(index + 1)] \(enemy.name)")
            }
                    var input = chooseOptionEnemy()
                target = enemiesArray[input - 1]
        }
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)")
        target.state = .trapped
//        rocketTrapOMatic.cooldown -= 1
//        turn += 1
    }
    
    func gadgetGatling() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            var damageDone = rocketGadgetGatling.damageValue * ap - enemy.def
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
            }
            }
//        turn += 1
        }
 
    
    // Methode, die prüft ob groot tot ist und dann den Skill zum skill array hinzufügt
    func isGrootDead() {
        let newSkill: Skill = rocketRageOfTheRacoon
        let newAction: () -> Void = rageOfTheRacoon
       
            skill.insert(newSkill, at: 2)
            action.insert(newAction, at: 2)
        
//        turn += 1
    }
    
    
    func rageOfTheRacoon() {
        print("\(name) entfesselt von der Wut und dem Schmerz über Groots Opfer \(skill[2].name). \(skill[2].effect)")
        for enemy in enemiesArray {
            var damageDone = rocketRageOfTheRacoon.damageValue * ap - enemy.hp
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
            }
        }
        print("\(name)`s Entschlossenheit spornt die anderen Helden an.")
        for hero in heroesArray {
            hero.ap += rocketRageOfTheRacoon.apAlliesValue
        }
        rageRacoonCounter -= 1
        if rageRacoonCounter == 0 {
            skill.remove(at: 2)
            action.remove(at: 2)
        }
//        turn += 1
    }
}
