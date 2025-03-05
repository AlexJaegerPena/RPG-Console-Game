//
//  Characters.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


// --------- CHARACTERS ---------

// ------ Starlord ------
var starLord: Rogue = Rogue (
    xp: 0,
    lvl: 1,
    regroup: false,
    bag: bagForAll,
    name: "👨🏽‍🚀 Starlord",
    maxHp: 4000,
    hp: 4000,
    ap: 100,
    crit: 15,
    def: 20,
    skill: [starLordBlaster, starLordDanceOff, gatherPower],
    state: .normal,
    action: []
)

// ------ Gamora ------
var gamora: Assassin = Assassin(
    xp: 0,
    lvl: 1,
    regroup: false,
    bag: bagForAll,
    name: "🥷 Gamora",
    maxHp: 3500,
    hp: 3500,
    ap: 70,
    crit: 20,
    def: 15,
    skill: [gamoraKreePoison, gamoraDaughtersFury, gatherPower],
    state: .normal,
    action: []
)

// ------ Drax ------
var drax: Berserker = Berserker(
    xp: 0,
    lvl: 1,
    regroup: false,
    bag: bagForAll,
    name: "🥊 Drax",
    maxHp: 5000,
    hp: 5000,
    ap: 30,
    crit: 10,
    def: 50,
    skill: [draxTwinBlades, draxProvocation, draxLiteralConfusion, gatherPower],
    state: .normal,
    action: []
)

// ------ Rocket ------
var rocket: Engineer = Engineer(
    xp: 0,
    lvl: 1,
    regroup: false,
    bag: bagForAll,
    name: "🦝 Rocket",
    maxHp: 3000,
    hp: 3000,
    ap: 90,
    crit: 25,
    def: 10,
    skill: [rocketTrapOMatic, rocketGadgetGatling, gatherPower],
    state: .normal,
    action: []
)

// ------ Groot ------
var groot: Support = Support(
    xp: 0,
    lvl: 1,
    regroup: false,
    bag: bagForAll,
    name: "🌱 Groot",
    maxHp: 6000,
    hp: 6000,
    ap: 40,
    crit: 5,
    def: 30,
    skill: [grootLifeBloom, grootRootSlam, grootWeAreGroot, gatherPower],
    state: .normal,
    action: []
)


var heroesArray: [Hero] = [starLord, gamora, drax, rocket, groot]
var heroesFighting = heroesArray



// Gegner Instanzen
var thanos: Boss = Boss(
    name: "☠️  Thanos",
    maxHp: 20000,
    hp: 20000,
    ap: 1,
    crit: 20,
    def: 5,
    skill: [thanosInfinityBeam, thanosInfinityBlast],
    action: []
)

var spacePirate: Enemy = Enemy(
    name: "🏴‍☠️ Space Pirate",
    maxHp: 5000,
    hp: 5000,
    ap: 40,
    crit: 5,
    def: 15,
    skill: [pirateBlasterAttack, pirateFire],
    action: []
)


var enemiesArray: [Character] = [thanos]
var enemiesFighting = enemiesArray
