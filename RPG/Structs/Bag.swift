//
//  Bag.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation


struct Bag {
    var item: [Item]
    var stolen: Bool = false
    var damaged: Bool = false
    

    func itemsInBag() {
        sleep(1)
        print()
        print("╭──────────────────────────────────────────╮")
        print("│    🎒  Diese Items sind im Rucksack:     │")
        print("╰──────────────────────────────────────────╯")
        for (index, item) in item.enumerated() {
            print("[\(index + 1)] \(item.name) | Menge: \(item.quantity)")
        }
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
}
