//
//  Boss.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


class Boss: Enemy {
    
    var summonFirst = false
    var summonSecond = false
    var summonThird = false

    override var hp: Int {
        
        didSet {
            if hp <= 7500 && !summonFirst {
                print("HP von \(name) ist unter 75%")
                state = .raging
                summonOpponent()
                summonFirst = true
            }
            
            if hp < 5000 && !summonSecond {
                print("HP von \(name) ist unter 50%")
                state = .raging
                summonOpponent()
                summonSecond = true
            }
            if hp < 2500 && !summonThird{
                print("HP von \(name) ist unter 25%")
                summonThird = true
            }
        }
    }
    

    func summonOpponent() {
        state = .raging
        var newEnemy: Character = spacePirate
        let randomNumber = Int.random(in: 1...5)
    
        switch randomNumber {
        case 1...4:
            newEnemy = spacePirate
            print("\(name) ruft einen weiteren Gegner aus den Tiefen des Universums herbei um an seiner Seite zu kämpfen: \(newEnemy.name)")
            print("Nun stehen den Guardians \(enemiesArray.count + 1) Gegner entgegen.")
        case 5:
            newEnemy = heroesArray.randomElement() ?? spacePirate
            print("\(name) entfesselt die Macht des Infitiny Gauntlets und erschafft einen dunklen Doppelgänger 🧬 eines Guardians: \(newEnemy.name)")
            print("Nun stehen den Guardians \(enemiesArray.count + 1) Gegner entgegen.")
            print("Die Helden stehen vor ihrer größten Herausforderung und müssen gegen den Schatten ihrer Selbst kämpfen. Werden sie es schaffen oder im Angesicht des Schicksals fallen?")
        default:
            print("Kein Gegner beschworen")
        }
        enemiesArray += [newEnemy]
    }
}
