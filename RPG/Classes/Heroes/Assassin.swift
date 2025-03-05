//
//  Gamora.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation



// Gamora Klasse
class Assassin: Hero {
    
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void ]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [gamoraKreePoison, gamoraDaughtersFury]
        self.action = [kreePoison, daughtersFury]
    }
    
    
//    func useSkill(index: Int, target: Character?) {
//        if index < 0 || index >= skill.count {
//            print("Ungültiger Skill-Index")
//            return
//        }
//        
//        let selectedSkill = skill[index]
//        print("\(name) setzt \(skill[0].name) ein. \(skill[0].effect)")
//        
//        if let target = target {
//            var damageDone = selectedSkill.damageValue * ap - target.def
//            if damageDone < target.def {
//                damageDone = 1
//            }
//            if damageDone >= target.hp {
//                target.hp = 0
//                print("\(target.name) wurde besiegt!")
//                enemiesArray.removeAll { $0.hp == 0 }
//            } else {
//                target.hp -= damageDone
//            }
//        } else {
//                print("Kein Ziel ausgewählt.")
//            }
//        }
//    
//    
//    func kreePoison() {
//        let target = chooseTarget()
//        useSkill(index: 0, target: target)
//    }
//    
//    func daughtersFury() {
//        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
//        for enemy in enemiesArray {
//            useSkill(index: 1, target: enemy)
//        }
//        for hero in heroesArray {
//            hero.hp += gamoraDaughtersFury.apAlliesValue
//        }
//    }
//    
//    
//    func chooseTarget() -> Character? {
//        if enemiesArray.count == 1 {
//            return enemiesArray.first
//        } else {
//            print("Welchen Gegner möchtest du angreifen")
//            for (index, enemy) in enemiesArray.enumerated() {
//                print("[\(index + 1)] \(enemy.name)")
//            }
//        var input = chooseOptionEnemy()
//        return enemiesArray[input - 1]
//        }
//    }
    
    
    func kreePoison() {
        var target: Character = thanos
        if enemiesFighting.count > 1 {
            print("Welchen Gegner möchtest du angreifen".sTab())
            for (index, enemy) in enemiesFighting.enumerated() {
                print("[\(index + 1)] \(enemy.name)")
            }
                    var input = chooseOptionEnemy()
            target = enemiesFighting[input - 1]
        }
        print("")
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)".sTab())
        var damageDone = gamoraKreePoison.damageValue * ap - target.def
        if damageDone < target.def {
            damageDone = 1
        }
        if damageDone > target.hp {
            target.hp = 0
            print("Der Gegner wurde besiegt.".sTab())
            enemiesFighting.removeAll { enemy in
                return enemy.hp == 0
            }
        } else {
            target.hp -= damageDone
            target.state = .poisoned
        }
    }
    
    func daughtersFury() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)".sTab())
        for enemy in enemiesFighting {
            var damageDone = gamoraDaughtersFury.damageValue * ap - enemy.def
            if damageDone < enemy.def {
                damageDone = 1
                print("\(enemy.name)'s Defense ist sehr stark.".sTab())
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
        for hero in heroesFighting {
            hero.ap += gamoraDaughtersFury.apAlliesValue
        }
       
    }
    
    
    func skills() {
        let action: [() -> Void] = [
            kreePoison,
            daughtersFury
        ]
    }
    
}
