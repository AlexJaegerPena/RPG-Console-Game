//
//  Menu.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation
import AVFoundation


class Game {
    var isRunning: Bool
    
//    var audioPlayer: AVAudioPlayer?
    
    init(isRunning: Bool) {
        self.isRunning = isRunning
    }

    
//    func playSound(path: String) {
//        let url = URL(fileURLWithPath: path)
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: url)
//            audioPlayer?.play()
//        }
//        catch {
//            print("Fehler beim Abspielen des Sounds: \(error) -- \(error.localizedDescription)")
//        }
//    }
    
    func welcome() {
        print()
        sleep(1)
        print()
       print(" \u{1B}[95m          IRGENDWO IN DER GALAXIE...\u{1B}[0m")
        sleep(2)
        print("""
        
        
        
                                            \u{1B}[96m._                            
                                            * ;                    \u{1B}[0m*   
                \u{1B}[33m.       \u{1B}[96m`*-.      \u{1B}[33m.\u{1B}[0m       \u{1B}[96m|"":                            
                            \\  \\             |""                             
                            .  \\            |   :                           
                \u{1B}[33m*\u{1B}[0m           \u{1B}[96m`   \\           |          \u{1B}[33m.\u{1B}[0m                            .
                            \u{1B}[96m\\   \\          |    ;               +.         
                                .   \\         |                   *._`-.      \u{1B}[96m..
                                 ..\u{1B}[0m          \u{1B}[96m`    \\        |     :          .-*'  `. `.    
                                _\\    \\.__..--**--...L_   _.-*'      .'`*'    
                            /  `*-._\\   -.       .-*"*+._       .'                     \u{1B}[33m*\u{1B}[0m
                            \u{1B}[96m:        ``*-._*.     \\      _J.   .'           
                        .-*'`*-.       ;     `.    \\    /   `.'             
                    .-*'  _.-*'.     .-'       `-.  `-.:   _.'`-.           \u{1B}[0m.\u{1B}[96m
                +*' _.-*'      `..-'             `*-. `**'      `-.        
                    `*'          .-'      ._            `*-._         `.      
                    [bug]  .-'         `.`-.____..+-**""'         .*"`.    
                        ._.-'          _.-*'':$$$;._$              /     `.  
                    .-'  `.      _.-*' `*-.__T$P   `"**--..__    :        `.
                .'..-'       \\_.-*'                            `"**--..___.-*'
                `. `.    _.-*'                       \u{1B}[33m.\u{1B}[96m                         
                `. `:*'                                                     \u{1B}[96m.\u{1B}[96m
                    `. `.                                                     
                    `*\u{1B}[0m
        """.bTab())


        sleep(2)
        print()
        print()
        print("\u{1B}[95m💬  Ready?".bTab())
        sleep(1)
        print("Start in 3...".bTab())
        sleep(1)
        print("2...".bTab())
        sleep(1)
        print("1...".bTab())
        sleep(2)
        print("1...".bTab())
        sleep(1)
        print("1...".bTab())
        sleep(1)
        print("1...".bTab())
        sleep(2)
        print("\u{001B}[5m    \u{001B}[33m⌇⌖⌱ FEHLER IM SYSTEM ⌇⌽\u{001B}[0m".bTab())
        sleep(2)
        print("\u{001B}[33mN∑USTåRT ....∫ç@√~åø∑œ∞çµ≈~√∫€¨@åπ•œ‚∞∂ƒµ√ç~".bTab())
        sleep(1)
        print(".".bTab())
        sleep(1)
        print("..".bTab())
        sleep(1)
        print("...".bTab())
        sleep(1)
        print("....".bTab())
        sleep(2)
        print(".....".bTab())
        sleep(1)
        print("    ACHTUNG! ⌇√ç⌖ EINDRINGLING ENTDECKT! œ‚∞∂∑œ".bTab())
        sleep(2)
        print("GUARDIANS, ZIEHT DIE STIEFEL AN – ES WIRD ERNST!\u{001B}[96m".bTab())
        sleep(5)
        print("""
        
        
        
            𒆚             𒀭          𒄑𒆛                               𒀭 
        
            Die Guardians waren gerade auf dem Weg zu einem wohlverdienten
            Kurzurlaub auf Knowhere. Rocket wollte sein neuestes Gadget ausprobieren
            (angeblich explodiert es „nur manchmal“), und Peter hatte sich schon auf
            Karaoke mit Cosmo vorbereitet. Aber dann... 

            Ein grelles Licht, ein riesiges Schiff und – oh, Überraschung – Thanos
            steht mitten im Weg! 

            Und nein, er ist nicht hier, um über das Wetter zu reden. Er hat es auf
            das Universum abgesehen, wieder mal, und natürlich sind nur die Guardians
            verrückt genug, ihn aufzuhalten.
        
                    𒀭                      𒉽                   𒄑𒆛        𒆚   
        
        
        
        """.bTab())
        sleep(5)
        print("""
            \u{001B}[35m
                       ____                     _ _                               
                      / ___|_   _  __ _ _ __ __| (_) __ _ _ __  ___               
                     | |  _| | | |/ _` | '__/ _` | |/ _` | '_ \\/ __|              
                     | |_| | |_| | (_| | | | (_| | | (_| | | | \\__ \\              
                      \\____|\\__,_|\\__,_|_|  \\__,_|_|\\__,_|_| |_|___/              
                        __   _   _             ____       _                  
                  ___  / _| | |_| |__   ___   / ___| __ _| | __ ___  ___   _ 
                 / _ \\| |_  | __| '_ \\ / _ \\ | |  _ / _` | |/ _` \\ \\/ / | | |
                | (_) |  _| | |_| | | |  __/ | |_| | (_| | | (_| |>  <| |_| |
                 \\___/|_|    \\__|_| |_|\\___|  \\____|\\__,_|_|\\__,_/_/\\_\\\\__, |
                                                                       |___/  
        
        """.bTab())

        sleep(2)

        print("""
                                    __     __    _      ___  
                                                    \\ \\   / /__ | |    / _ \\ 
                                                     \\ \\ / / _ \\| |   | | | |
                                                      \\ V / (_) | |_  | |_| |
                                                       \\_/ \\___/|_(_)  \\___/  
        """.bTab())
        sleep(2)
//        print("""
//    
//    
//            \u{001B}[96m···············································································
//            :      𒆚             𒀭          𒄑𒆛                               𒀭            :
//            :  Schließe dich den Guardians of the Galaxy an, um Chaos, Explosionen und    :
//            :  einem wütenden Thanos zu trotzen! Gemeinsam kämpft ihr um das Universum –  :
//            :  oder um zu verhindern, dass Rocket etwas Wichtiges in die Luft jagt.       :
//            :           𒀭                      𒉽                   𒄑𒆛        𒆚            :
//            ···············································································
//    """.bTab())
        
        
        isRunning = true
    }

    
    func gameMenu() {
        print()
        sleep(2)
        print()
        print()
        print("""
                    \u{001B}[96m
                 ____        _      _       __  __            _   _ 
                / ___| _ __ (_) ___| |     |  \\/  | ___ _ __ (_) (_)
                \\___ \\| '_ \\| |/ _ \\ |_____| |\\/| |/ _ \\ '_ \\| | | |
                 ___) | |_) | |  __/ |_____| |  | |  __/ | | | |_| |
                |____/| .__/|_|\\___|_|     |_|  |_|\\___|_| |_|\\__,_|
                      |_|                              
                                 \u{001B}[0m
        """.bTab())
        print()
        print("\u{001B}[35m╭──────────────────────────────────────────╮".sTab())
        print("│    Wähle eine der folgenden Optionen:    │".sTab())
        print("╰──────────────────────────────────────────╯\u{001B}[0m".sTab())
        print("""
              
              
              \t\t[1] Kampf beginnen
              \t\t[2] Infos über die Guardians of the Galaxy
              \t\t[3] Items im Rucksack ansehen
              \t\t[4] Spiel verlassen
              
                 
              """)
        

        let userInput = chooseMenuOption()
        
        switch userInput {
        case 1:
            sleep(2)
            fight.fight()
        case 2:
            guardiansInfo()
            sleep(2)
            // Funktion für weitere Infos der Guardians
            gameMenu()
        case 3:
            bagForAll.itemsInBag()
            sleep(2)
            // Funktion für weitere Infos der Items oder zurück zum Menü
            gameMenu()
        case 4:
            print("❌ Spiel wird beendet")
            print()
            exit(0)
        default:
            print("Fehlerhafte Eingabe. Bitte Option [1] bis [4] wählen")
            sleep(1)
        }
        
       
        
    }
    
    
    
    func gameStart() {
        welcome()
        gameMenu()
    }
}
