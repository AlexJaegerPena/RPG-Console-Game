//
//  Gamora.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


class Assassin: Hero {
    
    init() {
        super.init(
            xp: 0,
            lvl: 1,
            regroup: false,
            bag: bagForAll,
            name: "🧑‍🎤 Gamora",
            hp: 140,
            ap: 70,
            crit: 20,
            def: 15,
            skill: [gamoraKreeSlash, gamoraDaughtersFury],
            state: .healthy
            )
        }
    
    func kreeSlash(target: Enemy) {
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)")
        target.hp -= 25
        target.state = .poisoned
//        var cooldown: Int = 1
//        var turn: Int
//        turn += 1
    }
    
    func daughtersFury() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            enemy.hp -= 10
        }
        for hero in heroesArray {
            hero.crit += 5
        }
    }
    
}
