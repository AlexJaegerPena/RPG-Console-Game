//
//  Drax.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


class Drax: Hero {
    
    init() {
        super.init(
            xp: 0,
            lvl: 1,
            regroup: false,
            bag: bagForAll,
            name: "🧟‍♂️ Drax",
            hp: 200,
            ap: 20,
            crit: 10,
            def: 40,
            skill: [draxTwinBlades, draxProvocation, draxLiteralConfusion],
            state: .healthy
        )
    }
    
    func twinBlades(target: Enemy) {
        print("\(name) greift \(target.name) mit \(skill[0].name) an. \(skill[0].effect)")
            target.hp -= 1
        for hero in heroesArray {
            hero.crit += 10
        }

    }
        
        
    func provocation() {
        print("\(name) greift alle Gegner mit \(skill[1].name) an. \(skill[1].effect)")
        for enemy in enemiesArray {
            enemy.def -= 5
        }
        def += 10

    }
    
    func literalConfusion(target: Enemy) {
        
        let randomComment = Int.random(in: 1...4)
        switch randomComment {
        case 1:
            print("\"Warum sollte ich meine Feinde in ein Grab stecken wollen? Sie sind doch schon tot, wenn ich fertig bin!\"")
        case 2:
            print("\"Ich bewege mich so langsam, dass ich praktisch unsichtbar bin!\"")
        case 3:
            print("\"Wenn du nicht willst, dass ich sie ersteche, warum hast du mir dann Messer gegeben?\"")
        case 4:
            print("\"Metaphern sind bei mir verschwendet. Sieh den Konsequenzen im wahrsten Sinne des Wortes ins Auge!\"")
        default:
            print("Drax sagt nix.")
        }
        print("\(name) greift \(target.name) mit \(skill[2].name) an. \(skill[2].effect)")
        target.hp -= 10
        target.state = .disoriented
    }
}
