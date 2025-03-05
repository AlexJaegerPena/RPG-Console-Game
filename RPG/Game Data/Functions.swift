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
        print("Die Eingabe war keine Zahl. Versuche es nochmal!".sTab())
        return numberInput()
    }
}

func chooseMenuOption() -> Int {
    let a: Int = 1
    let b: Int = 4
    while true {
        print("\u{001B}[35mGib eine Zahl zwischen \(a) und \(b) ein.\u{001B}[0m".sTab())
        let input = numberInput()
        if input >= a && input <= b {
            return input
        } else {
            print("Die Eingabe war nicht korrekt. Versuche es erneut.".sTab())
        }
    }
}


func guardiansInfo() {
    print()
    print()
    print("\u{001B}[96m ╭──────────────────────────────────────────────╮".sTab())
    print(" │    Infos über die Guardians of the Galaxy    │".sTab())
//    print("╰──────────────────────────────────────────────╯\u{001B}[0m".bTab())
    print("\u{001B}[96m╭╰──────────────────────────────────────────────╯─────────────────────────────────────────────────╮\u{001B}[0m".sTab())
    print()
    for hero in heroesArray {
        print("  \u{001B}[90m╭─────────────────────────────────────────────────────────────────────────────────────────────╮\u{001B}[0m".sTab())
//        print("\u{001B}[96m╭─────────────────────────────────────────────────────────────────────────────────────────╮\u{001B}[0m".sTab())
        print("    \(hero.name) | HP: \(hero.hp) | AP: \(hero.ap) | DEF: \(hero.def)".sTab())
        print()
        for skill in hero.skill {
            print("    \(skill.name) - \u{001B}[90m\(skill.effect)\u{001B}[0m".sTab())
        }
        print("  \u{001B}[90m╰─────────────────────────────────────────────────────────────────────────────────────────────╯\u{001B}[0m".sTab())
        print()
    }
    print("\u{001B}[96m╰─────────────────────────────────────────────────────────────────────────────────────────────────╯\u{001B}[0m".sTab())
    print()
}

// Helden aus Array auswählen
func chooseHero() -> Int {
    let a: Int = 1
    let b: Int = heroesFighting.count
    while true {
        print("\u{001B}[35mGib eine Zahl zwischen \(a) und \(b) ein.\u{001B}[0m".sTab())
        let input = numberInput()
        if input >= a && input <= b {
            return input
        } else {
            print("Die Eingabe war nicht korrekt. Versuche es erneut.".sTab())
        }
    }
}


func chooseOptionEnemy() -> Int {
        let a: Int = 1
        let b: Int = enemiesFighting.count
        while true {
            print("Gib eine Zahl zwischen \(a) und \(b) ein.".sTab())
            let input = numberInput()
            if input >= a && input <= b {
                return input
            }
        }
    }

