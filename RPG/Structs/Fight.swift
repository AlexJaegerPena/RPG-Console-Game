//
//  Fight.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


struct Fight {
    var isRunning: Bool     //
    var round: Int
    var turn: Int
    //    var location: [String]    // Location switch/enum?
    //    var weather: [String]     // Weather switch/enum?
    //    var daytime: Bool
    //    var environmentEffects: [String]
    //    var status: String     // Aktueller Status des Kampfes - Beispiel: "Spannend", "Kritisch", "Gewonnen", "Verloren"
    //    var loot: [String]
    var enemy: Boss = thanos
    
    
    mutating func fightStarts(enemy: Boss) {
        isRunning = true
        print(#"""
                    ╔══════════════════════════════════════╗
                    I          DER KAMPF BEGINNT!          I
                    ╚══════════════════════════════════════╝
        
        💬 Starlord: „Okay, Leute, lasst uns episch sein!“ 
        
                                                    🗯️ Rocket: „Ich brauche MEHR Waffen!“ 
        
                    🗯️ Drax: „Ich bin bereit... für alles!“  
        
                                    💬 Gamora: „Ich werde nicht zögern, ihnen die Köpfe zu zeigen.“  
        
            💭 Groot: „Ich bin Groot.“
        
        """#)
        print()
        print("\(enemy.name) fordert die Guardians zum Kampf heraus")
        print("HP: \(enemy.hp) | AP: \(enemy.ap) | DEF: \(enemy.def)")
        print()
    }
    
    mutating func nextRound() {
        print("Runde 1")
        round += 1
    }
    
    func heroSelection() {
        print()
        print()
        print("\t\t╭─────────────────────────╮")
        print("\t\t│   Wähle einen Helden:   │")
        print("\t\t╰─────────────────────────╯")
        
        for (index, hero) in heroesArray.enumerated() {
            print("[\(index + 1)] \(hero.name) - HP: \(hero.hp) | AP: \(hero.ap) | DEF: \(hero.def)")
        }
        
    }
    
    
    func numberInput() -> Int {
        let input: String = readLine()!
        if let number = Int(input) {
            return number
        } else {
            print("Die Eingabe war keine Zahl. Versuche es nochmal!")
            return numberInput()
        }
    }

        
    func chooseOptionHero() -> Int {
            let a: Int = 1
            let b: Int = heroesArray.count
            while true {
                print("Gib eine Zahl zwischen \(a) und \(b) ein.")
                let input = numberInput()
                if input >= a && input <= b {
                    return input
                } else {
                    print("Die Eingabe war nicht korrekt. Versuche es erneut.")
                }
            }
        }
        
        
        func chosenHero() -> Hero {
            let actualHero = heroesArray[chooseOptionHero() - 1]
            print()
            print("\t\t* \(actualHero.name) macht sich bereit. *")
            print("\t\t╭─────────────────────────╮")
            print("\t\t│    Wähle einen Skill:   │")
            print("\t\t╰─────────────────────────╯")
            for (index, skill) in actualHero.skill.enumerated() {
                print("[\(index + 1)] \(skill.name) - \(skill.info)")
            }
            return actualHero
        }
    
    
    func chooseOption2(actualHero: Hero) {
            let a: Int = 1
            let b: Int = actualHero.skill.count
            let input = numberInput()
            if input >= a && input <= b {
//                sleep(1)
              var actualSkill = actualHero.action[input - 1]()
            } else {
                print("Die Eingabe war nicht korrekt. Versuche es erneut.")
            }
        }
    
//    func chosenSkill(chosenSkill: Skill) -> Skill {
//
//        print("\t\t*\(actualHero.name) setzt \(actualSkill.name) ein *")
//        return actualSkill
//    }
    
    
    func enemyAttacks() {
        if enemiesArray.count >= 1 {
            if let actualEnemy: Character = enemiesArray.randomElement() {
//                sleep(5)
                print()
                print()
                print("* Der Gegner ist am Zug *")
//                sleep(2)
                
                if actualEnemy.state == .normal {
                    let randomNumber = Int.random(in: 1...actualEnemy.skill.count)
                    let randomAttack: Skill = actualEnemy.skill[randomNumber - 1]
                    let randomNumber2 = Int.random(in: 1...heroesArray.count)
                    let randomHero = heroesArray[randomNumber2 - 1]
                    var damageDone = randomAttack.damageValue * enemy.ap - randomHero.def
                    if damageDone < randomHero.def {
                        damageDone = 1
                    }
                    if damageDone > randomHero.hp {
                        randomHero.hp = 0
                        print("Der Held wurde besiegt.")
                        heroesArray.remove(at: randomNumber)
                    }
                    print("\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
                    randomHero.hp -= damageDone
                }
                
                if actualEnemy.state == .trapped {
                    print("Der Gegner ist \(enemy.state.rawValue) und kann in dieser Runde nicht angreifen.")
                    actualEnemy.state = .normal
                   
                } else if actualEnemy.state == .stunned || actualEnemy.state == .disoriented {
                    print("Der Gegner ist \(actualEnemy.state.rawValue) und greift mit ↓ Stärke an. Möglicherweise greift er auch sich selbst an.")
                    
                    
                    let randomNumber = Int.random(in: 1...actualEnemy.skill.count)
                    let randomAttack: Skill = actualEnemy.skill[randomNumber - 1]
                    let randomNumber2 = Int.random(in: 1...heroesArray.count)
                    let randomHero = heroesArray[randomNumber2 - 1]
                    
                    let randomInt = Int.random(in: 1...2)
                    let target: Character
                    if randomInt == 1 {
                        target = randomHero
                    } else {
                        target = actualEnemy
                    }
                    
                    
                    
                    var damageDone = randomAttack.damageValue * enemy.ap / 2 - target.def
                    if damageDone < target.def {
                        damageDone = 1
                    }
                    if damageDone > target.hp {
                        target.hp = 0
                        if target.name == randomHero.name {
                            print("Der Held wurde besiegt.")
                            heroesArray.remove(at: randomNumber)
                        } else {
                            print("\(target.name) hat sich selbst besiegt.")
                            enemiesArray.removeAll(where: {$0.name == target.name})
                        }
                    }
                    print("\(actualEnemy.name) greift \(target.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
                    target.hp -= damageDone
                    actualEnemy.state = .normal
                }
                  
                 else if actualEnemy.state == .poisoned {
                    print("Der Gegner ist \(actualEnemy.state.rawValue) - ↓  \(gamoraKreePoison.damageValue * 10 - actualEnemy.def) HP. Er greift mit weniger Stärke an.")
                     
                     let randomNumber = Int.random(in: 1...actualEnemy.skill.count)
                     let randomAttack: Skill = actualEnemy.skill[randomNumber - 1]
                     let randomNumber2 = Int.random(in: 1...heroesArray.count)
                     let randomHero = heroesArray[randomNumber2 - 1]
                     var damageDone = randomAttack.damageValue * enemy.ap / 2 - randomHero.def
                     if damageDone < randomHero.def {
                         damageDone = 1
                     }
                     if damageDone > randomHero.hp {
                         randomHero.hp = 0
                         print("Der Held wurde besiegt.")
                         heroesArray.remove(at: randomNumber)
                     }
                     print("\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
                     randomHero.hp -= damageDone
                     actualEnemy.state = .normal

                   
                } else if actualEnemy.state == .raging {
                    print("Der Gegner ist \(actualEnemy.state.rawValue) und greift mit ↑ Stärke an.")
                    
                    let randomNumber = Int.random(in: 1...actualEnemy.skill.count)
                    let randomAttack: Skill = actualEnemy.skill[randomNumber - 1]
                    let randomNumber2 = Int.random(in: 1...heroesArray.count)
                    let randomHero = heroesArray[randomNumber2 - 1]
                    var damageDone = randomAttack.damageValue * (enemy.ap + 10) - randomHero.def
                    if damageDone < randomHero.def {
                        damageDone = 1
                    }
                    if damageDone > randomHero.hp {
                        randomHero.hp = 0
                        print("Der Held wurde besiegt.")
                        heroesArray.remove(at: randomNumber)
                    }
                    print("\(actualEnemy.name) greift \(randomHero.name) mit \(randomAttack.name) an (\(damageDone) Schaden).")
                    randomHero.hp -= damageDone
                  
                } else if actualEnemy.state == .dead {
                    print("Der Gegner ist \(actualEnemy.state.rawValue) und kann nicht mehr kämpfen.")
                }
            }
      
        } else {
            print("Alle Gegner wurden besiegt")
        }
        if enemy.state == .trapped || enemy.state == .stunned {
        }
        
    }
    

        
    mutating func test() {
            fightStarts(enemy: thanos)
//        sleep(2)
        while thanos.hp > 0 {
            heroSelection()
//            sleep(2)
            chooseOption2(actualHero: chosenHero())
//            sleep(2)
            enemyAttacks()
//            sleep(2)
        }
    }
        
    
    mutating func endFight() {
        isRunning = false
    }
}
