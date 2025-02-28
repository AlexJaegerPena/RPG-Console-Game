//
//  LootEffect.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation

enum LootEffect {
    case hpChange(Int)
    case apChange(Int)
    case critChange(Int)
    case defChange(Int)
    case buff
    case groupBuff
    case debuff
    case groupDebuff
}
