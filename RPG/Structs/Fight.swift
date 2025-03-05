//
//  Fight.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation

struct Fight {
    var isRunning: Bool = false
    var round: Int = 1
    //    var level: Int
    //    var location: [String]    // Location switch/enum?
    //    var weather: [String]     // Weather switch/enum?
    //    var daytime: Bool
    //    var environmentEffects: [String]
    //    var status: String     // Aktueller Status des Kampfes - Beispiel: "Spannend", "Kritisch", "Gewonnen", "Verloren"
    //    var loot: [String]
    var enemy: Boss = thanos
    var enemiesFighting: [Character]
    var heroesFighting: [Hero]

    mutating func fightStarts(enemy: Boss) {
        isRunning = true
        print("\u{001B}[96m")
        print(
            #"""

            
                     _  __                      __   _                _             _   
                    | |/ /__ _ _ __ ___  _ __  / _| | |__   ___  __ _(_)_ __  _ __ | |_ 
                    | ' // _` | '_ ` _ \| '_ \| |_  | '_ \ / _ \/ _` | | '_ \| '_ \| __|
                    | . \ (_| | | | | | | |_) |  _| | |_) |  __/ (_| | | | | | | | | |_ 
                    |_|\_\__,_|_| |_| |_| .__/|_|   |_.__/ \___|\__, |_|_| |_|_| |_|\__|
                                        |_|                     |___/                   
            """#.sTab())
        sleep(1)
        print("""
              \u{001B}[0m 
                          💬 Starlord: „Okay, Leute, lasst uns episch sein!“
                          💬 Gamora: „Ich werde nicht zögern, ihnen die Köpfe zu zeigen.“
                          🗯️  Drax: „Ich bin bereit... für alles!“ 
                          🗯️  Rocket: „Ich brauche MEHR Waffen!“                                                         
                          💭 Groot: „Ich bin Groot.“
        """)
        sleep(1)
        print()
        print()
        print()
        print("\t\(enemy.name)\u{001B}[33m fordert die Guardians zum Kampf heraus")
        print("\t   HP: \(enemy.hp) | AP: \(enemy.ap) | DEF: \(enemy.def)\u{001B}[0m")
        print()
        sleep(1)
    }

    mutating func nextRound() {
        print()
        print("   \u{001B}[90m----- Runde \(round) -----".bTab())
        round += 1
    }

    mutating func heroSelection() {
        nextRound()
        sleep(1)
        print()
        print("\u{001B}[95m╭───────────────────────────────────────╮".sTab())
        print("│           Wähle einen Helden:         │".sTab())
        print("╰───────────────────────────────────────╯\u{001B}[0m".sTab())
        print()
        for (index, hero) in heroesFighting.enumerated() {
            print("[\(index + 1)] \(hero.name) - HP: \(hero.hp) | AP: \(hero.ap) | DEF: \(hero.def)\u{001B}[0m".bTab())
        }
        print()
        print()
    }

    // Usereingabe Zahl
    func numberInput() -> Int {
        let input: String = readLine()!
        if let number = Int(input) {
            return number
        } else {
            print("Die Eingabe war keine Zahl. Versuche es nochmal!".sTab())
            return numberInput()
        }
    }
    
    // Helden aus Array auswählen
    func chooseHero() -> Int {
        let a: Int = 1
        let b: Int = heroesFighting.count
        while true {
            print("\u{001B}[95mGib eine Zahl zwischen \(a) und \(b) ein.\u{001B}[0m".sTab())
            let input = numberInput()
            if input >= a && input <= b {
                return input
            } else {
                print("Die Eingabe war nicht korrekt. Versuche es erneut.".sTab())
            }
        }
    }
    
    // ausgewählen Helden anzeigen
    func chosenHero() -> Hero {
        let selectedIndex = chooseHero() - 1
        let actualHero = heroesFighting[selectedIndex]
        print()
        printSkills(hero: actualHero)
        printItems(hero: actualHero)
        return actualHero
    }

    func printSkills(hero: Hero) {
        sleep(1)
        print()
        print("      \u{001B}[0m\(hero.name)\u{001B}[0m macht sich bereit. \u{001B}[35m".sTab())
        print("╭───────────────────────────────────────╮".sTab())
        print("│           Wähle eine Aktion:          │".sTab())
        print("╰───────────────────────────────────────╯\u{001B}[0m".sTab())
        print()
        print("\u{001B}[4m\u{001B}[35m🎯 Skills:\u{001B}[0m".bTab())
        print()
        for (index, skill) in hero.skill.enumerated() {
            print("[\(index + 1)] \(skill.name) - \u{001B}[90m\(skill.info)\u{001B}[0m".bTab())
        }
    }
    
    func printItems(hero: Hero) {
        print()
        print("\u{001B}[4m\u{001B}[35m🎒 Items:\u{001B}[0m".bTab())
        print()
        for (index, item) in itemsArray.enumerated() {
            print("[\(index + hero.skill.count + 1)] \(item.description)".bTab())
        }
        print("")
    }

    func chooseAction(actualHero: Hero) -> Int {
        let skillsArray = actualHero.action
        let itemsArray = (bagForAll.itemAction ?? [])
        let actions = skillsArray + itemsArray
        let a: Int = 1
        let b: Int = actions.count
        while true {
            print()
            print("\u{001B}[95mGib eine Zahl zwischen \(a) und \(b) ein.\u{001B}[0m".sTab())
            let input = numberInput()
            if input >= a && input <= b {
                //                sleep(1)
                actions[input - 1]()
                return input
            } else {
                print("Die Eingabe war nicht korrekt. Versuche es erneut.".sTab())
            }
        }
    }
    
    
    mutating func checkHeroHp(randomHero: Character, randomAttack: Skill, actualEnemy: Character ) {
        var damageDone =
            randomAttack.damageValue * enemy.ap - randomHero.def
        if damageDone < randomHero.def {
            print("Die Verteidigung von \(randomHero.name) ist stark".sTab())
            damageDone = 10
        }
        if damageDone > randomHero.hp {
            randomHero.hp = 0
            print("Der Held wurde besiegt.".sTab())
            heroesFighting.removeAll(where: { $0.name == randomHero.name} )
        }
        print("\(randomHero.name) erleidet durch \(actualEnemy.name) \(randomAttack.name) \(damageDone) Schaden.".sTab())
        randomHero.hp -= damageDone
    }
    
    
    mutating func checkHeroesHp(allHeroesTarget: [Hero], randomAttack: Skill, actualEnemy: Character ) {
        print("\(actualEnemy.name) verursacht mit \(randomAttack.name) Flächenschaden.".sTab())
        for hero in allHeroesTarget {
            var damageDone =
                randomAttack.damageValue * enemy.ap - hero.def
            if damageDone < hero.def {
                print("Die Verteidigung von \(hero.name) ist stark".sTab())
                damageDone = 10
            }
            if damageDone > hero.hp {
                hero.hp = 0
                print("Der Held wurde besiegt.".sTab())
                heroesFighting.removeAll(where: { $0.name == hero.name} )
            }
            hero.hp -= damageDone
            print("\(hero.name) erleidet \(damageDone) Schaden.".sTab())
        }
    }


    mutating func enemyAttacks() {
//        enemiesFighting = enemiesArray
//        let actualEnemy: Character
        if enemiesFighting.count >= 1 {
            if let actualEnemy: Character = enemiesFighting.randomElement() {
                print("Enemies in enemiesFighting: \(enemiesFighting.count)")
                print("ausgewählter Enemy in enemiesFighting: \(actualEnemy.name)")
                sleep(1)
                print()
                print()
                print()
                print("\u{001B}[33m ⚠️  Der Gegner ist am Zug  ⚠️ \u{001B}[0m".sTab())
                print()
                //                sleep(1)
                
        // ----- normal -----
                if actualEnemy.state == .normal {
//                    let randomTarget: Hero
//                    let allHeroesTarget: [Hero] = heroesFighting
                    let randomNumber = Int.random(
                        in: 1...actualEnemy.skill.count)
//                    let randomAttack: Skill = actualEnemy.skill[0]
                    if randomNumber == 1 {
                        let randomAttack: Skill = actualEnemy.skill[randomNumber - 1]
                        let randomNumber2 = Int.random(in: 1...heroesFighting.count)
                        let randomTarget = heroesFighting[randomNumber2 - 1]
                        checkHeroHp(randomHero: randomTarget, randomAttack: randomAttack, actualEnemy: actualEnemy)
                    } else {
                        let randomAttack: Skill = actualEnemy.skill[randomNumber - 1]
                        let allHeroesTarget = heroesFighting
                        checkHeroesHp(allHeroesTarget: allHeroesTarget, randomAttack: randomAttack, actualEnemy: actualEnemy)
                    }
                   
                    
//                    let randomAttack: Skill = actualEnemy.skill[
//                        randomNumber - 1]
//                    let randomNumber2 = Int.random(in: 1...heroesFighting.count)
//                    let randomHero = heroesFighting[randomNumber2 - 1]
//                    var damageDone =
//                        randomAttack.damageValue * enemy.ap - randomHero.def
//                    if damageDone < randomHero.def {
//                        print("Die Verteidigung von \(randomHero.name) ist stark".sTab())
//                        damageDone = 10
//                    }
//                    if damageDone > randomHero.hp {
//                        randomHero.hp = 0
//                        print("Der Held wurde besiegt.".sTab())
//                        heroesFighting.removeAll(where: { $0.name == randomHero.name} )
//                    }
//                    print("\(randomHero.name) erleidet durch \(actualEnemy.name) \(damageDone) Schaden.".sTab())
//                    randomHero.hp -= damageDone
//                    checkHeroHp(randomHero: randomHero, randomAttack: randomAttack, actualEnemy: actualEnemy)
                }
                
        // ----- taunted -----
                if actualEnemy.state == .taunted {
                    let attack: Skill = actualEnemy.skill[0]
                    if let index: Int = heroesFighting.firstIndex(where: { $0 is Berserker }) {
                        let heroTarget = heroesFighting[index]
//                        var damageDone = attack.damageValue * enemy.ap - heroTarget.def
//                        if damageDone < heroTarget.def {
////                            print("\(actualEnemy.name) greift \(heroTarget.name) mit \(attack.name) an (\(damageDone) Schaden).")
//                            print("Die Verteidigung von \(heroTarget.name) ist stark".sTab())
//                            damageDone = 10
//                        }
//                        if damageDone > heroTarget.hp {
////                            print("\(actualEnemy.name) greift \(heroTarget.name) mit \(attack.name) an (\(damageDone) Schaden).")
//                            heroTarget.hp = 0
//                            print("Der Held wurde besiegt.".sTab())
//                            heroesFighting.removeAll(where: { $0.name == heroTarget.name} )
//                        }
//                        print("\(heroTarget.name) erleidet durch \(actualEnemy.name) \(damageDone) Schaden.".sTab())
//                    heroTarget.hp -= damageDone
                        checkHeroHp(randomHero: heroTarget, randomAttack: attack, actualEnemy: actualEnemy)
                    actualEnemy.state = .normal }
                    }
                
      // ----- trapped -----
                if actualEnemy.state == .trapped {
                    print("Der Gegner ist \(enemy.state.rawValue) und kann in dieser Runde nicht angreifen.".sTab())
                    actualEnemy.state = .normal
                }
                
     // ----- stunned / disoriented -----
                if actualEnemy.state == .stunned || actualEnemy.state == .disoriented {
                    print(
                        "Der Gegner ist \(actualEnemy.state.rawValue) und greift mit ↓ Stärke an. Möglicherweise greift er auch sich selbst an.".sTab()
                    )

                    let randomNumber = Int.random(
                        in: 1...actualEnemy.skill.count)
                    let randomAttack: Skill = actualEnemy.skill[
                        randomNumber - 1]
                    let randomNumber2 = Int.random(in: 1...heroesFighting.count)
                    let randomHero = heroesFighting[randomNumber2 - 1]

                    let randomInt = Int.random(in: 1...2)
                    let target: Character
                    if randomInt == 1 {
                        target = randomHero
                    } else {
                        target = actualEnemy
                    }

//                    var damageDone =
//                        randomAttack.damageValue * enemy.ap / 2 - target.def
//                    if damageDone < target.def {
//                        print("Die Verteidigung von \(target.name) ist stark".sTab())
//                        damageDone = 10
//                    }
//                    if damageDone > target.hp {
//                        target.hp = 0
//                        if target.name == randomHero.name {
//                            print("Der Held wurde besiegt.".sTab())
//                            heroesFighting.remove(at: randomNumber)
//                        } else {
//                            print("\(target.name) hat sich selbst besiegt.".sTab())
//                            heroesFighting.removeAll(where: { $0.name == randomHero.name} )
//                        }
//                    }
//                    print("\(randomHero.name) erleidet durch \(actualEnemy.name) \(damageDone) Schaden.".sTab())
//                    target.hp -= damageDone
                    checkHeroHp(randomHero: target, randomAttack: randomAttack, actualEnemy: actualEnemy)
                    actualEnemy.state = .normal
                    
                    
           // ----- poisoned -----
                } else if actualEnemy.state == .poisoned {
                    print(
                        "Der Gegner ist \(actualEnemy.state.rawValue). Er greift mit weniger Stärke an.".sTab()
                    )

                    let randomNumber = Int.random(
                        in: 1...actualEnemy.skill.count)
                    let randomAttack: Skill = actualEnemy.skill[
                        randomNumber - 1]
                    let randomNumber2 = Int.random(in: 1...heroesFighting.count)
                    let randomHero = heroesFighting[randomNumber2 - 1]
//                    var damageDone =
//                        randomAttack.damageValue * enemy.ap / 2 - randomHero.def
////                    print("\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
//                    if damageDone < randomHero.def {
//                        print("Die Verteidigung von \(randomHero.name) ist stark".sTab())
//                        damageDone = 10
//                    }
//                    if damageDone > randomHero.hp {
//                        randomHero.hp = 0
//                        print("Der Held wurde besiegt.".sTab())
//                        heroesFighting.removeAll(where: { $0.name == randomHero.name} )
//                    }
////                    print(
////                        "\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden)."
////                    )
//                    print("\(randomHero.name) erleidet durch \(actualEnemy.name) \(damageDone) Schaden.".sTab())
//                    randomHero.hp -= damageDone
                    checkHeroHp(randomHero: randomHero, randomAttack: randomAttack, actualEnemy: actualEnemy)
                    actualEnemy.state = .normal
                    
          // ----- raging -----
                } else if actualEnemy.state == .raging {
                    print(
                        "Der Gegner ist \(actualEnemy.state.rawValue) und greift mit ↑ Stärke an.".sTab()
                    )

                    let randomNumber = Int.random(
                        in: 1...actualEnemy.skill.count)
                    let randomAttack: Skill = actualEnemy.skill[
                        randomNumber - 1]
                    let randomNumber2 = Int.random(in: 1...heroesFighting.count)
                    let randomHero = heroesFighting[randomNumber2 - 1]
//                    var damageDone = randomAttack.damageValue * (enemy.ap + 10) - randomHero.def
////                    print("\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).".sTab())
//                    if damageDone < randomHero.def {
//                        print("Die Verteidigung von \(randomHero.name) ist stark".sTab())
//                        damageDone = 10
//                    }
//                    if damageDone > randomHero.hp {
////                        print("\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
//                        randomHero.hp = 0
//                        print("Der Held wurde besiegt.".sTab())
//                        heroesFighting.removeAll(where: { $0.name == randomHero.name} )
//                    }
////                    print(
////                        "\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
//                    print("\(randomHero.name) erleidet durch \(actualEnemy.name) \(damageDone) Schaden.".sTab())
//                    randomHero.hp -= damageDone
                    checkHeroHp(randomHero: randomHero, randomAttack: randomAttack, actualEnemy: actualEnemy)
                    actualEnemy.state = .normal
                    
            // ----- dead -----
                } else if actualEnemy.state == .dead {
                    print(
                        "Der Gegner ist \(actualEnemy.state.rawValue) und kann nicht mehr kämpfen.".sTab()
                    )
                }
                print()
            }
        } else {
            print("Alle Gegner wurden besiegt".sTab())
        }
    }

    mutating func fight() {
        fightStarts(enemy: thanos)
        //        sleep(2)
        while !enemiesFighting.isEmpty || !heroesFighting.isEmpty {
            heroSelection()
            //            sleep(2)
            chooseAction(actualHero: chosenHero())

            //            sleep(2)
            enemyAttacks()
            //            sleep(2)
        }
        endFight()
    }

    mutating func endFight() {
        isRunning = false
        if enemiesFighting.isEmpty {
            print()
            print("Du hast \(enemy.name) in Runde \(round) besiegt!".sTab())
            print("""
                 \u{001B}[92m
                  ____          _               _                                                     _
                 |  _ \\ _   _  | |__   __ _ ___| |_    __ _  _____      _____  _ __  _ __   ___ _ __ | |
                 | | | | | | | | '_ \\ / _` / __| __|  / _` |/ _ \\ \\ /\\ / / _ \\| '_ \\| '_ \\ / _ \\ '_ \\| |
                 | |_| | |_| | | | | | (_| \\__ \\ |_  | (_| |  __/\\ V  V / (_) | | | | | | |  __/ | | |_|
                 |____/ \\__,_| |_| |_|\\__,_|___/\\__|  \\__, |\\___| \\_/\\_/ \\___/|_| |_|_| |_|\\___|_| |_(_)
                                                      |___/
                 \u{001B}[0m
        """.sTab())
        } else {
            if heroesFighting.isEmpty {
                print()
                print("Du hast \(round) Runden überlebt!".sTab())
                print("Versuche es nochmal!".sTab())
            }
        }
    }
}
