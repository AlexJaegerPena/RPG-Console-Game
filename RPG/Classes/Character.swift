//
//  Character.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation



    // Superclass
class Character: CustomStringConvertible{
    @objc dynamic var name: String 
    var hp: Int {
        didSet {
            if oldValue < hp {
                print("\(name)'s HP ↑ \(hp).")
            } else {
                if oldValue > ap {
                    if hp >= 0 {
                        print("\(name)'s HP ↓ von \(oldValue) auf \(hp).")
                    } else {
                        hp = 0
                        print("\(name)'s HP ↓ von \(oldValue) auf \(hp).")
                        state = .dead
                    }
                }
            }
        }
    }
    var ap: Int {
        didSet {
            if oldValue < ap {
                print("\(name)'s AP ↑ von \(oldValue) auf \(ap).")
            } else {
                if oldValue > ap {
                    if ap >= 0 {
                    } else {
                        ap = 0
                    }
                    print("\(name)'s AP ↓ von \(oldValue) auf \(ap).")
                }
            }
        }
    }
    var crit: Int {
        didSet {
            if oldValue < crit {
                print("\(name)'s CRIT ↑ von \(oldValue) auf \(crit).")
            }  else {
                if oldValue > crit {
                    if crit >= 0 {
                    } else {
                        crit = 0
                    }
                    print("\(name)'s CRIT ↓ von \(oldValue) auf \(crit).")
                }
            }
        }
    }
    var def: Int {
        didSet {
            if oldValue < def {
                print("\(name)'s DEF ↑ von \(oldValue) auf \(def).")
            } else {
                if oldValue > def {
                    if def >= 0 {
                    } else {
                        def = 0
                    }
                    print("\(name)'s DEF ↓ von \(oldValue) auf \(def).")
                }
            }
        }
    }
        
    
//    var buff: Buff = Buff.noBuff
//    var hasBuff: Bool = false
//    var debuff: Debuff = Debuff.noDebuff
//    var hasDebuff: Bool = false
    var skill: [Skill]
    
    var state: State = State.normal {
        didSet {
            if oldValue != state && state != .normal {
                print("\(name) ist \(state.rawValue)")
            }
        }
    }
    
    var action: [() -> Void]
    
    
    var description: String {
        return "\(name) - \(hp) HP | \(ap) AP | \(def) DEF"
    }
    
    

    init(name: String, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State = .normal, action: [() -> Void]) {
        self.name = name
        self.hp = hp
        self.ap = ap
        self.crit = crit
        self.def = def
        self.skill = skill
        self.action = action
    }
    
    
//    func checkState() {
//        switch state {
//        case .healthy:
//            
//        case .poisoned:
//            
//            print("10 Schaden wegen Vergiftung")
//            // nach jedem turn -5 hp
//        case .trapped:
//            
//        case .disoriented, .stunned:
//            
//        case .raging:
//            ap += ap * 10
//            crit += crit * 10
//            def += def * 10
//        case .dead:
//            hp = 0
//        case .gathering:
//            def -= 10
//            
//        }
//    }
    
    
    func standardAttack() {
        print("\(name) nutzt \(skill[0].name) und \(skill[0].effect)")
    }
        

    }
    
