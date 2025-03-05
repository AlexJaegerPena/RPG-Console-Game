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
            if hp <= 15000 && !summonFirst {
                print("HP von \(name) ist unter 75%".sTab())
                state = .raging
                summonOpponent()
                summonFirst = true
            }
            
            if hp < 10000 && !summonSecond {
                print("HP von \(name) ist unter 50%".sTab())
                state = .raging
                summonOpponent()
                summonSecond = true
            }
            if hp < 5000 && !summonThird{
                print("HP von \(name) ist unter 25%".sTab())
                summonThird = true
            }
        }
    }
    
    

    func summonOpponent() {
        state = .raging
        var newEnemy: Character = spacePirate
        let randomNumber = Int.random(in: 1...3)
    
        switch randomNumber {
        case 1:
            newEnemy = spacePirate
            print("\u{001B}[33m ⚠️  \(name) ruft einen weiteren Gegner aus den Tiefen des Universums herbei um an seiner Seite zu kämpfen: \(newEnemy.name)".sTab())
            print("Nun stehen den Guardians \(enemiesFighting.count + 1) Gegner entgegen.\u{001B}[0m".sTab())
        case 2...3:
            newEnemy = heroesFighting.randomElement() ?? spacePirate
            print("\u{001B}[33m ⚠️  \(name) entfesselt die Macht des Infitiny Gauntlets und erschafft einen dunklen Doppelgänger 🧬 eines Guardians: \u{001B}[90m\(newEnemy.name)\u{001B}[0m".sTab())
            print("Nun stehen den Guardians \(enemiesFighting.count + 1) Gegner entgegen.".sTab())
            print("Die Helden müssen gegen den Schatten ihrer Selbst kämpfen. Werden sie es schaffen oder im Angesicht des Schicksals fallen?\u{001B}[0m".sTab())
            
        default:
            print("Kein Gegner beschworen".sTab())
        }
        enemiesFighting += [newEnemy]
    }
}
