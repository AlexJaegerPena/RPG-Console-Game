//
//  Protocols.swift
//  RPG
//
//  Created by Alexandra Jäger on 27.02.25.
//

import Foundation


protocol HeroProtocol {
    var name: String { get }
    var hp: Int { get set }
    var ap: Int { get set }
    var crit: Int { get set }
    var def: Int { get set }
    var skill: [Skill] { get set }
    
}


