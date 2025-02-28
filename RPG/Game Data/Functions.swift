//
//  Functions.swift
//  RPG
//
//  Created by Alexandra Jäger on 26.02.25.
//

import Foundation



func numberInput() -> Int {
    let input: String = readLine()!
    if let number = Int(input) {
        return number
    } else {
        print("Die Eingabe war keine Zahl. Versuche es nochmal!")
        return numberInput()
    }
}


func guardiansInfo() {
    for (index, hero) in heroesArray.enumerated() {
        print()
        print("[\(index + 1)] \(hero.name) ")
        print("\tHP: \(hero.hp) | AP: \(hero.ap) | DEF: \(hero.def)")
        print("\tSkills:")
        for skill in hero.skill {
            print("\t \(skill.name):\t\(skill.effect)")
        }
        print("\n")
    }
}



func chooseOptionEnemy() -> Int {
        let a: Int = 1
        let b: Int = enemiesArray.count
        while true {
            print("Gib eine Zahl zwischen \(a) und \(b) ein.")
            let input = numberInput()
            if input >= a && input <= b {
                return input
            }
        }
    }

