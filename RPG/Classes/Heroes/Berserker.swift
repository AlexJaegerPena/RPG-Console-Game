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
        if enemiesArray.count > 1 {
           print("Welchen Gegner möchtest du angreifen")
            for (index, enemy) in enemiesArray.enumerated() {
                print("[\(index + 1)] \(enemy.name)")
            }
                    var input = chooseOptionEnemy()
                target = enemiesArray[input - 1]
        }
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)")
        var damageDone = draxTwinBlades.damageValue * ap - target.def
        if damageDone < target.def {
            damageDone = 1
        }
        if damageDone > target.hp {
            target.hp = 0
            print("Der Gegner wurde besiegt.")
        } else {
            target.hp -= damageDone
        }
//        turn += 1
    }
        
        
    func provocation() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            enemy.def -= draxProvocation.defTargetValue
            enemy.state = .taunted
        }
        for hero in heroesArray {
            hero.def += draxProvocation.defAlliesValue
        }
        //        turn += 1
    }
    
    func literalConfusion() {
        var target: Character = thanos
        if enemiesArray.count > 1 {
           print("Welchen Gegner möchtest du angreifen")
            for (index, enemy) in enemiesArray.enumerated() {
                print("[\(index + 1)] \(enemy.name)")
            }
                    let input = chooseOptionEnemy()
                target = enemiesArray[input - 1]
        }
        print("\(name) greift \(target.name) mit \(skill[2].name) an. \(skill[2].effect)")
        let randomComment = Int.random(in: 1...4)
        switch randomComment {
        case 1:
            print("Drax: \"Warum sollte ich meine Feinde in ein Grab stecken wollen? Sie sind doch schon tot, wenn ich fertig bin!\"")
        case 2:
            print("Drax: \"Ich bewege mich so langsam, dass ich praktisch unsichtbar bin!\"")
        case 3:
            print("Drax: \"Wenn du nicht willst, dass ich sie ersteche, warum hast du mir dann Messer gegeben?\"")
        case 4:
            print("Drax: \"Metaphern sind bei mir verschwendet. Sieh den Konsequenzen im wahrsten Sinne des Wortes ins Auge!\"")
        default:
            print("Drax sagt nix.")
        }
        var damageDone = target.skill[1].damageValue / 2 * ap - target.def
        if damageDone < target.def {
            damageDone = 1
        }
        if damageDone > target.hp {
            target.hp = 0
            print("Der Gegner wurde besiegt.")
            enemiesArray.removeAll { enemy in
                return enemy.hp == 0
            }
        } else {
            target.hp -= damageDone
            target.state = .disoriented
        }
    }
}
