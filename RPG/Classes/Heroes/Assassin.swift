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
    
    
    func kreePoison() {
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
