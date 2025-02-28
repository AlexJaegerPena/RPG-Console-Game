//
//  Characters.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


// --------- CHARACTERS ---------

// ------ Starlord ------
var starLord: Rogue = Rogue(
    xp: 0,
    lvl: 1,
    regroup: false,
    bag: bagForAll,
    name: "👨🏽‍🚀 Starlord",
    hp: 15000,
    ap: 50,
    crit: 15,
    def: 10,
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
    hp: 14000,
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
    hp: 20000,
    ap: 20,
    crit: 10,
    def: 40,
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
    hp: 12000,
    ap: 80,
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
    hp: 18000,
    ap: 40,
    crit: 5,
    def: 15,
    skill: [grootLifeBloom, grootRootSlam, grootWeAreGroot, gatherPower],
    state: .normal,
    action: []
)


var heroesArray: [Hero] = [starLord, gamora, drax, rocket, groot]



// Gegner Instanzen
var thanos: Boss = Boss(
    name: "☠️ Thanos",
    hp: 10000,
    ap: 80,
    crit: 20,
    def: 60,
    skill: [thanosInfinityBeam, thanosInfinityBlast],
    action: []
)

var spacePirate: Enemy = Enemy(
    name: "🏴‍☠️ Space Pirate",
    hp: 5000,
    ap: 20,
    crit: 5,
    def: 5,
    skill: [pirateBlasterAttack, pirateFire],
    action: []
)


var enemiesArray: [Character] = [thanos]
