//
//  StarLord.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation



// Starlord Klasse
class Rogue: Hero {
    

    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [starLordBlaster, starLordDanceOff]
        self.action = [blaster, danceOff]
    }
    
    
    
    
    func blaster() {
        var target: Character = thanos
        if enemiesFighting.count > 1 {
           print("Welchen Gegner möchtest du angreifen".sTab())
            for (index, enemy) in enemiesFighting.enumerated() {
                print("[\(index + 1)] \(enemy.name)".sTab())
            }
                    let input = chooseOptionEnemy()
                target = enemiesFighting[input - 1]
        }
        var damageDone = starLordBlaster.damageValue * ap - target.def
        print("\(self.name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect) (\(damageDone) Schaden)".sTab())
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
        }
        target.def -= starLordBlaster.defTargetValue
//        var cooldown: Int = 1
//        var turn: Int
//        turn += 1
    }
    
    func danceOff() {
        print("\(self.name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)".sTab())
        for enemy in enemiesFighting {
            var damageDone = starLordDanceOff.damageValue * ap - enemy.def
            if damageDone < enemy.def {
                damageDone = 1
            }
            if damageDone > enemy.hp {
                enemy.hp = 0
                print("Der Gegner wurde besiegt.".sTab())
                enemiesFighting.removeAll { enemy in
                    return enemy.hp == 0
                }
            }
            enemy.hp -= damageDone
            enemy.ap -= starLordDanceOff.apTargetValue
            enemy.state = .disoriented
        }
        for hero in heroesFighting {
            hero.ap += starLordDanceOff.apAlliesValue
        }
    }
    
}
