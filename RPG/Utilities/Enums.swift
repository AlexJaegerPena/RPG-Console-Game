//
//  Enums.swift
//  RPG
//
//  Created by Alexandra Jäger on 27.02.25.
//

import Foundation


enum State: String {
    case normal = "kampfbereit"
    case healed = "✨ regeneriert"
    case poisoned = "🧪 vergiftet"
    case trapped = "⛓️  gefangen"
    case disoriented = "🌀 verwirrt"
    case raging = "🔥 wütend"
    case dead = "🪦 ausgeschieden"
    case gathering = "sammelt Kräfte"
    case stunned = "💤 betäubt"
    case taunted = "💢 verspottet"
    
//    func printState() {
//        switch self {
//        case .normal:
//        case .healed:
//        case .poisoned:
//        case .trapped:
//        case .disoriented:
//        case .raging:
//        case .dead:
//        case .gathering:
//        case .stunned:
//        case .taunted:
//        }
//    }
    
    func getMultiplikator() -> Double {
        switch self {
        case .normal:
            return 1
        case .healed:
            return 1.2
        case .poisoned:
            return 0.8
        case .trapped:
            return 0
        case .disoriented:
            return 0.7
        case .raging:
            return 2
        case .dead:
            return 0
        case .gathering:
            return 0
        case .stunned:
            return 0
        case .taunted:
            return 1
        }
    }
    }



//enum Buff {
//    case noBuff
//    case starLordBlaster       // enemy hp -
//    case starLordDanceOff      // enemy ap - / allies crit +
//    case gamoraKreeSlash       // enemy vergiftet
//    case draxProvocation       // drax def +
//    case draxLiteralConfusion  // enemy greift sich selbst an
//    case rocketTrapOMatic      // enemy gefangen
//    case rocketRageOfTheRacoon // rocket ap +
//    case grootLifeBloom        // allies hp + / def +
//    case grootRootSlam         // enemy betäubt / crit -
//    case grootWeAreGroot       // allies hp + / def + / ap +
//    
    
    
    //    case thanosRageBuff
    //    case thanosOtherBuff
    //    case thanosDebuffEnemy
    //    case thanosDebuffEnemy2
    //    case thanosDebuffArea
    //    case thanosDebuffArea2
//}
