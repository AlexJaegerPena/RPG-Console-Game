//
//  Groot.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


class Groot: Hero {
    
    
    init() {
        super.init(
            xp: 0,
            lvl: 1,
            regroup: false,
            bag: bagForAll,
            name: "🌵 Groot",
            hp: 180,
            ap: 40,
            crit: 5,
            def: 15,
            skill: [grootLifeBloom, grootRootSlam, grootWeAreGroot],
            state: .healthy
        )
    }
    
    func lifeBloom() {
        print("\(name) wirkt \(skill[0].name). \(skill[0].effect)")
        for hero in heroesArray {
            hero.hp += 50
            hero.def += 10
        }
    }
    
    func rootSlam() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            enemy.crit -= 10
            enemy.state = .stunned
        }
        for hero in heroesArray {
            hero.crit += 5
        }
    }
    
    func weAreGroot() {
        print("\(name) wirkt \(skill[0].name). \(skill[0].effect).")
        print("Groot hat sich selbst geopfert und scheidet aus dem Kampf aus")
        state = .dead
        for hero in heroesArray {
            hero.state = .healthy
            hero.hp += 100
            hero.def += 20
        }
    }
}
