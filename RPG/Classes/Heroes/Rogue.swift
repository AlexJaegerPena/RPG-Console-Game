//
//  StarLord.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation



// Starlord Klasse
class Rogue: Hero {
    
    override init(xp: Int, lvl: Int, regroup: Bool, bag: Bag, name: String, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State, action: [() -> Void]) {
        super.init(xp: xp, lvl: lvl, regroup: regroup, bag: bag, name: name, hp: hp, ap: ap, crit: crit, def: def, skill: skill, state: state, action: action)
        self.skill = [starLordBlaster, starLordDanceOff]
        self.action = [blaster, danceOff]
    }
    
    
    
    
    func blaster() {
        var target: Character = thanos
        if enemiesArray.count > 1 {
           print("Welchen Gegner möchtest du angreifen")
            for (index, enemy) in enemiesArray.enumerated() {
                print("[\(index + 1)] \(enemy.name)")
            }
                    var input = chooseOptionEnemy()
                target = enemiesArray[input - 1]
        }
        var damageDone = starLordBlaster.damageValue * ap - target.def
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect) (\(damageDone) Schaden)")
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
        }
        target.def -= starLordBlaster.defTargetValue
//        var cooldown: Int = 1
//        var turn: Int
//        turn += 1
    }
    
    func danceOff() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            var damageDone = starLordDanceOff.damageValue * ap - enemy.def
            if damageDone < enemy.def {
                damageDone = 1
            }
            if damageDone > enemy.hp {
                enemy.hp = 0
                print("Der Gegner wurde besiegt.")
                enemiesArray.removeAll { enemy in
                    return enemy.hp == 0
                }
            }
            enemy.hp -= damageDone
            enemy.ap -= starLordDanceOff.apTargetValue
            enemy.state = .disoriented
        }
        for hero in heroesArray {
            hero.ap += starLordDanceOff.apAlliesValue
        }
    }
    
}
