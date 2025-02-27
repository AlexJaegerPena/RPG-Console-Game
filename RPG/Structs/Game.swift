//
//  Menu.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


struct Game {
    var isRunning: Bool
    
    mutating func gameStart() {
        print(#"""
                  Willkommen zum rundenbasierten RPG 
        
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
        ··············································································
        :      𒆚             𒀭          𒄑𒆛                               𒀭     :
        :  Begib dich mit den Guardians of the Galaxy auf ein chaotisches Abenteuer  :
        :  voller Kämpfe, Humor und gefährlicher Gegner, um das Universum vor einer  :
        :  neuen, finsteren Bedrohung zu retten!                       𒀭            :
        :           𒀭                      𒉽                   𒄑𒆛        𒆚     :
        ··············································································
        """)
        isRunning = true
    }
    
    
    
}
