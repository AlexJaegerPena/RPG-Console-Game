//
//  Menu.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


struct Game {
    var isRunning: Bool

    
    mutating func welcome() {
        print(#"""
        
        Irgendwo in der Galaxie .....
                                     ._                             
                                      |* ;                       *     
            .       `*-.      .       |"":                            
                     \  \             |""                             
                      .  \            |   :                           
          *           `   \           |          .                            -
                       \   \          |    ;               +.         
                        .   \         |                   *._`-.      .
             .          `    \        |     :          .-*'  `. `.    
                        _\    \.__..--**--...L_   _.-*'      .'`*'    
                       /  `*-._\   -.       .-*"*+._       .'                     *
                      :        ``*-._*.     \      _J.   .'           
                  .-*'`*-.       ;     `.    \    /   `.'             
              .-*'  _.-*'.     .-'       `-.  `-.:   _.'`-.           .
           +*' _.-*'      `..-'             `*-. `**'      `-.        
            `*'          .-'      ._            `*-._         `.      
               [bug]  .-'         `.`-.____..+-**""'         .*"`.    
                 ._.-'          _.-*'':$$$;._$              /     `.  
              .-'  `.      _.-*' `*-.__T$P   `"**--..__    :        `.
        .'..-'       \_.-*'                            `"**--..___.-*'
        `. `.    _.-*'                       .                         
          `. `:*'                                                     .
            `. `.                                                     
              `*
        """#)
        sleep(2)
        print("Ready?")
        sleep(1)
        print("Wir starten in 3...")
        sleep(1)
        print("2...")
        sleep(1)
        print("1...")
        sleep(2)
        print("1...")
        sleep(1)
        print("1...")
        sleep(1)
        print("1...")
        sleep(2)
        print("⌇⌖⌱ Fehler im System ⌇⌽")
        sleep(2)
        print("N∑USTåRT ....∫ç@√~åø∑œ∞çµ≈~√∫€¨@åπ•œ‚∞∂ƒµ√ç~")
        sleep(1)
        print(".")
        sleep(1)
        print("..")
        sleep(1)
        print("...")
        sleep(1)
        print("....")
        sleep(2)
        print(".....")
        sleep(1)
        print("ACHTUNG! ⌇√ç⌖ EINDRINGLING ENTDECKT! œ‚∞∂∑œ")
        sleep(2)
        print("GUARDIANS, ZIEHT DIE STIEFEL AN – ES WIRD ERNST!")
        sleep(5)
        print("""
        
            𒆚             𒀭          𒄑𒆛                               𒀭 
            Die Guardians waren gerade auf dem Weg zu einem wohlverdienten Kurzurlaub
            auf Knowhere. Rocket wollte sein neuestes Gadget ausprobieren (angeblich
            explodiert es „nur manchmal“), und Peter hatte sich schon auf Karaoke mit
            Cosmo vorbereitet. Aber dann... 

            Ein grelles Licht, ein riesiges Schiff und – oh, Überraschung – Thanos
            steht mitten im Weg! 

            Und nein, er ist nicht hier, um über das Wetter zu reden. Er hat es auf
            das Universum abgesehen, wieder mal, und natürlich sind nur die Guardians
            verrückt genug, ihn aufzuhalten.

            Also schnallt euch an und macht euch bereit: Es wird laut, chaotisch und
            definitiv explosiv!
                     𒀭                      𒉽                   𒄑𒆛        𒆚    
        
        """)
        sleep(10)
        print(#"""
        
               ____                     _ _                               
              / ___|_   _  __ _ _ __ __| (_) __ _ _ __  ___               
             | |  _| | | |/ _` | '__/ _` | |/ _` | '_ \/ __|              
             | |_| | |_| | (_| | | | (_| | | (_| | | | \__ \              
              \____|\__,_|\__,_|_|  \__,_|_|\__,_|_| |_|___/              
                __   _   _             ____       _                  
          ___  / _| | |_| |__   ___   / ___| __ _| | __ ___  ___   _ 
         / _ \| |_  | __| '_ \ / _ \ | |  _ / _` | |/ _` \ \/ / | | |
        | (_) |  _| | |_| | | |  __/ | |_| | (_| | | (_| |>  <| |_| |
         \___/|_|    \__|_| |_|\___|  \____|\__,_|_|\__,_/_/\_\\__, |
                                                               |___/                                                              
        """#)
        sleep(2)
        print(#"""
                                            __     __    _      ___  
                                            \ \   / /__ | |    / _ \ 
                                             \ \ / / _ \| |   | | | |
                                              \ V / (_) | |_  | |_| |
                                               \_/ \___/|_(_)  \___/  
        
        
        """#)
        sleep(2)
        print("""
    ···············································································
    :      𒆚             𒀭          𒄑𒆛                               𒀭      :
    :  Schließe dich den Guardians of the Galaxy an, um Chaos, Explosionen und    :
    :  einem wütenden Thanos zu trotzen! Gemeinsam kämpft ihr um das Universum –  :
    :  oder um zu verhindern, dass Rocket etwas Wichtiges in die Luft jagt.       :
    :           𒀭                      𒉽                   𒄑𒆛        𒆚      :
    ···············································································
    """)
        
        
        isRunning = true
    }

    
    func gameMenu() {
        print()
        sleep(2)
        print()
        print()
        print(#"""
        
                 ____        _      _       __  __            _   _ 
                / ___| _ __ (_) ___| |     |  \/  | ___ _ __ (_) (_)
                \___ \| '_ \| |/ _ \ |_____| |\/| |/ _ \ '_ \| | | |
                 ___) | |_) | |  __/ |_____| |  | |  __/ | | | |_| |
                |____/| .__/|_|\___|_|     |_|  |_|\___|_| |_|\__,_|
                      |_|                                           
        """#.bTab())
        print()
        print("\u{001B}[35m╭──────────────────────────────────────────╮".bTab())
        print("│    Wähle eine der folgenden Optionen:    │".bTab())
        print("╰──────────────────────────────────────────╯\u{001B}[0m".bTab())
        print("""
              
              
              \t[1] Kampf beginnen
              \t[2] Infos über die Guardians of the Galaxy
              \t[3] Items im Rucksack ansehen
              \t[4] Spiel verlassen
              
                 
              """.sTab())
        

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
    
    
    
    mutating func gameStart() {
//        welcome()
        gameMenu()
    }
}
