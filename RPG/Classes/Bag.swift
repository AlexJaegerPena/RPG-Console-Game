//
//  BagClass.swift
//  RPG
//
//  Created by Alexandra Jäger on 28.02.25.
//

import Foundation

//
//  Bag.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


class Bag {
    var item: [Item] = itemsArray
    var stolen: Bool = false
    var damaged: Bool = false
    var itemAction: [() -> Void]? = []
    
    init(item: [Item], stolen: Bool, damaged: Bool, itemAction: [ () -> Void]) {
        self.item = item
        self.stolen = stolen
        self.damaged = damaged
        self.itemAction =  [itemGH, itemSLM, itemGR, itemRBB]
    }
    
    
    
    func itemsInBag() {
        sleep(1)
        print()
        print()
        print("\u{001B}[92m╭──────────────────────────────────────────╮".bTab())
        print("│    🎒  Diese Items sind im Rucksack:     │".bTab())
        print("╰──────────────────────────────────────────╯\u{001B}[0m".bTab())
        print()
//        print("\u{001B}[33m╭──────────────────────────────────────────────────────────────────────────────────────────────────╮\u{001B}[0m".sTab())
        for item in item {
            print("\u{001B}[90m╭──────────────────────────────────────────────────────────────────────────────────────────────────╮\u{001B}[0m".sTab())
            print("  \(item.name) \u{001B}[90m- (\(item.quantity)x)".sTab())
            print("  \(item.effect)\u{001B}[0m".sTab())
            print("\u{001B}[90m╰──────────────────────────────────────────────────────────────────────────────────────────────────╯\u{001B}[0m".sTab())
            print()
        }
//        print("\u{001B}[33m╰──────────────────────────────────────────────────────────────────────────────────────────────────╯\u{001B}[0m".sTab())
    }
    
    func stolenBag() {
        if stolen {
            print("Der Rucksack wurde gestohlen und die Helden können keine Items mehr nutzen")
        } else if damaged {
            print("Der Rucksack wurde im Kampf beschädigt und es sind Items verloren gegangen.")
            
            
            // TODO: Logik für verloren gegangene Items
            
        } else {
            print("🎒 Diese Items sind im Rucksack:")
            for (index, item) in item.enumerated() {
                var i = index
                i += 1
                print("[\(i)] \(item) | \(item.quantity) x verfügbar")
            }
        }
    }
    
    
    
    func itemGH() {
        print("Welcher Held soll mit \(grootsHeilsamen.name) geheilt werden?")
        for (index, hero) in heroesArray.enumerated() {
            print("[\(index + 1)] \(hero.name) - HP: \(hero.hp) | AP: \(hero.ap) | DEF: \(hero.def)")
        }
        let selectedIndex = chooseHero() - 1
        let actualHero = heroesArray[selectedIndex]
        actualHero.hp += 100
        actualHero.state = .healed
        print("\(grootsHeilsamen.quantity)")
        let newQuantity = changeItemQ(item: grootsHeilsamen)
        grootsHeilsamen = newQuantity
        for (index, item) in itemsArray.enumerated() {
            if item.name == newQuantity.name {
                itemsArray[index] = newQuantity
            }
            if item.quantity == 0 {
                itemsArray.removeAll(where: { $0.quantity == 0 })
                itemAction?.remove(at: index)
            }
        }
        print(grootsHeilsamen.quantity)
    }
    
    func itemSLM() {
        print("Die Gruppe gewinnt durch \(starlordsMixtape.name) Angriffsstärke.")
        for hero in heroesArray {
            hero.ap += 30
        }
        let newQuantity = changeItemQ(item: starlordsMixtape)
        starlordsMixtape = newQuantity
        for (index, item) in itemsArray.enumerated() {
            if item.name == newQuantity.name {
                itemsArray[index] = newQuantity
            }
            if item.quantity == 0 {
                itemsArray.removeAll(where: { $0.quantity == 0 })
                itemAction?.remove(at: index)
            }
        }
        print(starlordsMixtape.quantity)
    }
    
    func itemGR(){
        print("Alle negativen Effekte der Gruppenmitglieder wurden durch \(gamorasRemedy.name) entfernt")
        for hero in heroesArray {
            hero.state = .normal
        }
        gamorasRemedy.quantity -= 1
    }
    
    func itemRBB() {
        print("\(rocketsBoomBox) explodiert mit einem ohrenbetäubenden Bass. Gegner nehmen Schaden und sind 🌀 verwirrt.")
        for enemy in enemiesArray {
            enemy.hp -= 2
            enemy.state = .disoriented
        }
        rocketsBoomBox.quantity -= 1

    }
}
