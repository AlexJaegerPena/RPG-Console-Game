//
//  Drax.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation



// Drax Klasse
class Berserker: Hero {
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void ]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [draxTwinBlades, draxProvocation, draxLiteralConfusion]
        self.action = [twinBlades, provocation, literalConfusion]
    }
    
    func twinBlades() {
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
        var damageDone = draxTwinBlades.damageValue * ap - target.def
        if damageDone < target.def {
            damageDone = 1
        }
        if damageDone > target.hp {
            target.hp = 0
            print("Der Gegner wurde besiegt.".sTab())
        } else {
            target.hp -= damageDone
        }
//        turn += 1
    }
        
        
    func provocation() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)".sTab())
        for enemy in enemiesFighting {
            enemy.def -= draxProvocation.defTargetValue
            enemy.state = .taunted
        }
        for hero in heroesFighting {
            hero.def += draxProvocation.defAlliesValue
        }
    }
    
    func literalConfusion() {
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
        print("\(name) greift \(target.name) mit \(skill[2].name) an. \(skill[2].effect)".sTab())
        let randomComment = Int.random(in: 1...4)
        switch randomComment {
        case 1:
            print("Drax: \"Warum sollte ich meine Feinde in ein Grab stecken wollen? Sie sind doch schon tot, wenn ich fertig bin!\"".sTab())
        case 2:
            print("Drax: \"Ich bewege mich so langsam, dass ich praktisch unsichtbar bin!\"".sTab())
        case 3:
            print("Drax: \"Wenn du nicht willst, dass ich sie ersteche, warum hast du mir dann Messer gegeben?\"".sTab())
        case 4:
            print("Drax: \"Metaphern sind bei mir verschwendet. Sieh den Konsequenzen im wahrsten Sinne des Wortes ins Auge!\"".sTab())
        default:
            print("Drax sagt nix.")
        }
        var damageDone = target.skill[1].damageValue / 2 * ap - target.def
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
            target.state = .disoriented
        }
    }
}
