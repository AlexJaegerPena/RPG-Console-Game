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
            if oldValue == hp {
                print("HP bleibt bei \(hp)".sTab())
            }
            if oldValue < hp {
                print("\(name)'s HP ↑ von \(oldValue) auf \(hp).".sTab())
            } else {
                if oldValue > hp {
                    if hp >= 0 {
                        print("\(name)'s HP ↓ von \(oldValue) auf \(hp).".sTab())
                    }
                    if hp == 0 {
                        print("\(name)'s HP ↓ von \(oldValue) auf \(hp).".sTab())
                        state = .dead
                    }
                }
            }
        }
    }
    var ap: Int {
        didSet {
            if oldValue == ap {
                print("AP bleibt bei \(ap)".sTab())
            }
            if oldValue < ap {
                print("\(name)'s AP ↑ von \(oldValue) auf \(ap).".sTab())
            } else {
                if oldValue > ap {
                    if ap >= 0 {
                    } else {
                        ap = 1
                    }
                    print("\(name)'s AP ↓ von \(oldValue) auf \(ap).".sTab())
                }
            }
        }
    }
    var crit: Int {
        didSet {
            if oldValue < crit {
                print("\(name)'s CRIT ↑ von \(oldValue) auf \(crit).".sTab())
            }  else {
                if oldValue > crit {
                    if crit >= 0 {
                    } else {
                        crit = 0
                    }
                    print("\(name)'s CRIT ↓ von \(oldValue) auf \(crit).".sTab())
                }
            }
        }
    }
    var def: Int {
        didSet {
            if def == oldValue {
                print("DEF bleibt bei \(def).".sTab())
            }
            if oldValue < def {
                print("\(name)'s DEF ↑ von \(oldValue) auf \(def).".sTab())
            } else {
                if oldValue > def {
                    if def >= 0 {
                    } else {
                        def = 0
                    }
                    print("\(name)'s DEF ↓ von \(oldValue) auf \(def).".sTab())
                }
            }
        }
    }
        
    
    var skill: [Skill]
    
    var state: State = State.normal {
        didSet {
            if oldValue != state && state != .normal {
                print("\(name) ist \(state.rawValue)".sTab())
            }
        }
    }
    
    var action: [() -> Void]
    
    
    var description: String {
        return "\(name) - \(hp) HP | \(ap) AP | \(def) DEF".sTab()
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
    
