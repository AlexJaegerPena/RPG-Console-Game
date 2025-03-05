//
//  Enemy.swift
//  RPG
//
//  Created by Alexandra Jäger on 24.02.25.
//

import Foundation



class Enemy: Character {
    
    var loot: Loot?
    

    
    init(loot: Loot? = nil, name: String, maxHp: Int, hp: Int, ap: Int, crit: Int, def: Int, skill: [Skill], action:[()-> Void]) {
        self.loot = loot
        super.init(name: name, maxHp: maxHp, hp: hp, ap: ap, crit: crit, def: def, skill: skill, action: action)
    }
    
    
    
    func attackRandomTarget() {
        var randomTarget: Hero = drax
        if let target = heroesFighting.randomElement() {
            randomTarget = target
        } else {
            print("Kein Held zum Angreifen.")
        }
        print("\(name) greift \(randomTarget.name) mit \(skill[0].name) an und verursacht \(skill[0].damageValue) Schaden.")
        randomTarget.hp -= skill[0].damageValue
    }
    
    
    func randomAttack(actualEnemy: Enemy) {
        let randomNumber = Int.random(
            in: 1...actualEnemy.skill.count)
        let randomAttack: Skill = actualEnemy.skill[
            randomNumber - 1]
    }
    
    func attackAll() {
        print("\(name) greift mit \(skill[1].name) an und \(skill[1].effect)")
        for hero in heroesFighting {
            hero.hp -= skill[1].damageValue
        }
    }
       
}
