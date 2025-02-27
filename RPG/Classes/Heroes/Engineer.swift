//
//  Rocket.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


class Rocket: Hero {
    
    var grootDead: Bool = false
    
    init() {
        super.init(
            xp: 0,
            lvl: 1,
            regroup: false,
            bag: bagForAll,
            name: "🦝 Rocket",
            hp: 120,
            ap: 80,
            crit: 25,
            def: 10,
            skill: [rocketTrapOMatic, rocketGadgetGatling],
            state: .healthy
            )
        }
    
    
    // wenn groot tot, dann skill zu skill array hinzufügen
    
    // kann man diesen print auch als Protocol machen?
    func trapOMatic(target: Enemy) {
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)")
        target.state = .trapped
//        var cooldown: Int = 1
//        var turn: Int
//        turn += 1
    }
    
    func gadgetGatling() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            let randomCrit = Int.random(in: 1...3)
            switch randomCrit {
            case 1:
                enemy.hp -= 5
            case 2:
                enemy.hp -= 6
            case 3:
                enemy.hp -= 15
            default:
                enemy.hp -= 5
            }
        }
    }
    
    // Methode, die prüft ob groot tot ist und dann den Skill zum skill array hinzufügt
    func isGrootDead() {
        let newSkill: Skill = rocketRageOfTheRacoon
        if groot.state == .dead {
                skill.append(newSkill)
        }
    }
    
    
    func rageOfTheRacoon() {
        print("\(name) entfesselt von der Wut und dem Schmerz über Groots Opfer \(skill[3].name). \(skill[3].effect)")
        for enemy in enemiesArray {
            enemy.hp -= 100
        }
        print("\(name)`s Entschlossenheit spornt die anderen Helden an.")
        for hero in heroesArray {
            hero.ap += 5
        }
        
    }
}
