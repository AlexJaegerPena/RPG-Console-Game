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
    var location: [String]    // Location switch/enum?
    var weather: [String]     // Weather switch/enum?
    var daytime: Bool
    var environmentEffects: [String]
    var status: String     // Aktueller Status des Kampfes - Beispiel: "Spannend", "Kritisch", "Gewonnen", "Verloren"
    var loot: [String]
 

    
    func gameMenu() {
        print("Menü")
        print("""
              Wähle eine der folgenden Optionen:
              [1] 𒄑𒆛  Kampf beginnen
              [2] 𒀭𒀭𒀭  Infos über die Guardians of the Galaxy
              [4] 𒍣𒇻   Items im Rucksack ansehen
              [5] 𒉽𒉽    Spiel verlassen
              """)
        var userInput: Int = Int(readLine()!) ?? 0
        switch userInput {
        case 1:
            // evtl. kampf beginnen mit 2 Optionen, zufällig generiert oder mit Auswahl des Wetter etc durch den user
        case 2:
        case 3:
        default:
            print("Fehlerhafte Eingabe. Bitte Option [1] bis [5] wählen")
            sleep(1)
            gameMenu()
            
        }
    }
    
    func gameStart() {
        
    }
    
    mutating func nextRound() {
        
    }
    
    mutating func endFight() {
        isRunning = false
    }
}
