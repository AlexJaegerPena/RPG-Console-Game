//
//  StarLord.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


class StarLord: Hero {
    
    init() {
        super.init(
            xp: 0,
            lvl: 1,
            regroup: false,
            bag: bagForAll,
            name: "🪐 Starlord",
            hp: 150,
            ap: 50,
            crit: 15,
            def: 10,
            skill: [starLordBlaster, starLordDanceOff, gatherPower],
                state: .healthy 
            )
        }
    
    
    
    func blaster(target: Enemy) {
        target.hp -= 20
//        var cooldown: Int = 1
//        var turn: Int
//        turn += 1
        print("\(name) greift \(target.name) mit \(skill[0].name) an und verursacht \(skill[0].damageValue) Schaden.")
    }
    
    func danceOff(target: [Enemy]) {
        for enemy in enemiesArray {
            hp -= 5
            ap -= 20
        }
        for hero in heroesArray {
            ap += 10
        }
        print("\(name) greift alle Gegner mit \(skill[1].name) an und verursacht \(skill[1].damageValue) Schaden.")
    }
    
}
