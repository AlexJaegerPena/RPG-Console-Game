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
    
    var maxHp: Int
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
    
    

    init(name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], state: State = .normal, action: [() -> Void]) {
        self.name = name
        self.maxHp = maxHp
        self.hp = hp
        self.ap = ap
        self.crit = crit
        self.def = def
        self.skill = skill
        self.action = action
    }

    }
    
