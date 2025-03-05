//
//  Skills.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


// --------- SKILLS ---------

//MARK: --- HEROES

// --- Starlord ---
let starLordBlaster: Skill = Skill(
    name: "🔫 Elementar Blaster",
    info: "Star-Lord greift einen Gegner an.",
    damageValue: 20,
    defTargetValue: 5,
    effect: "↓ HP und ↓ DEF des Gegners.",
    cooldown: 1
)

let starLordDanceOff: Skill = Skill(
    name: "🪩 Dance-Off",
    info: "Ein Dance Battle, das die Gegner ablenkt und verwirrt.",
//    type: [SkillType.changeAp],
    damageValue: 5,
    apTargetValue: 5,
    apAlliesValue: 5,
    
    effect: "↓ AP des Gegners. ↑ AP der Gruppe.",
    cooldown: 2
)


// --- Gamora ---
let gamoraKreePoison: Skill = Skill(
    name: "🗡️  Kree Gift",
    info: "Gamora setzt ihre legendären Klingen gegen einen Gegner ein.",
//    type: [SkillType.changeHp],
    damageValue: 25,
    effect: "Verletzt Gegner und 🧪 vergiftet ihn.",
    cooldown: 1

)

let gamoraDaughtersFury: Skill = Skill(
    name: "⛓️‍💥  Daughter's Fury",
    info: "Ein starker Angriff gegen mehrere Gegner, bei dem Gamora ihren inneren Zorn entfesselt.",
//    type: [SkillType.changeHp],
    damageValue: 10,
    apAlliesValue: 2,
    effect: "Der Angriff verletzt mehrere Gegner. ↑ AP der Gruppe.",
    cooldown: 3
)


// --- Drax ---
// Single target
let draxTwinBlades: Skill = Skill(
    name: "⚔️  Doppelklingen",
    info: "Drax' fügt einem Gegner Schaden zu.",
//    type: [SkillType.changeHp],
    damageValue: 10,
    apAlliesValue: 1,
    effect: "Verursacht einen hohen Einzelziel-Schaden.",
    cooldown: 1
)

// Area target
let draxProvocation: Skill = Skill(
    name: "‼️  Provokation",
    info: "Drax brüllt laut und verringert die DEF der Gegner und erhöht die DEF der Gruppe.",
//    type: [SkillType.rage, .changeDef],
    defTargetValue: 10,
    defAlliesValue: 10,
    effect: "↓ DEF des Gegners. ↑ DEF der Gruppe.",
    cooldown: 1
)

// Bonus
let draxLiteralConfusion: Skill = Skill(
    name: "🗯️  Buchstäbliche Verwirrung",
    info: "Drax gibt einen seiner legendären Kommentare von sich, der so absurd ist, dass der Gegner kurzzeitig verwirrt ist.",
//    type: [SkillType.debuff],
    effect: "Gegner wird 🌀 verwirrt, greift möglicherweise sich selbst an.",
    cooldown: 2
)


// --- Rocket ---

// singletarget
let rocketTrapOMatic: Skill = Skill(
    name: "🪤 Trap-O-Matic",
    info: "Rocket wirft eine Falle, die einen Gegner einfängt.",
//    type: [SkillType.debuff],
    effect: "Der Gegner ist für eine Runde ⛓️  gefangen und kann nicht angreifen",
    cooldown: 2
)

//areatarget
let rocketGadgetGatling: Skill = Skill(
    name: "🧨 Gadget Turm",
    info: "Ein automatischer Geschützturm, der mit Allerlei von Rocket gefundenem Kram um sich schießt und dabei mehrere Gegner trifft.",
//    type: [SkillType.damage, .buff],
    damageValue: 5,
    effect: "Ein Geschützturm der alle Gegner trifft.",
    cooldown: 2
)

//bonus
let rocketRageOfTheRacoon: Skill = Skill(
    name: "⚡️ Der Zorn des Racoon",
    info: "Von der Wut und dem Schmerz über Groots Opfer angetrieben, entfesselt Rocket eine unkontrollierte Angriffssalve mit all seinen Waffen. Angriffsstärke der Gruppe wird erhöht.",
//    type: [SkillType.damage, .buff],
    damageValue: 40,
    apAlliesValue: 1,
    effect: "Greift alle Gegner gleichzeitig an und verursacht hohen Flächenschaden. ↑ AP der Gruppe, da die Entschlossenheit wächst, den Kampf zu gewinnen.",
    cooldown: 4
)
  

// --- Groot ---

let grootLifeBloom: Skill = Skill(
    name: "🪷 Lebensblüte",
    info: "Groot heilt die Gruppe mit einem Lebensregen.",
//    type: [SkillType.heal],
    healValue: 50,
    defAlliesValue: 10,
    effect: "↑ HP und ↑ DEF aller Gruppenmitglieder.",
    cooldown: 3
)

let grootRootSlam: Skill = Skill(
    name: "🫚 Wurzel Slam",
    info: "Groot schlägt mit seinen mächtigen Wurzeln auf den Boden was Gegner im Umkreis betäubt und schwächt.",
//    type: [SkillType.damage, .debuff],
    damageValue: 5,
    apAlliesValue: 3,
    effect: "Gegner werden 💤 betäubt.",
    cooldown: 1
)

let grootWeAreGroot: Skill = Skill(
    name: "🌳 We Are Groot",
    info: "Groot opfert sich selbst, um seine tiefe Verbindung zu seinen Freunden zu zeigen. Sein Opfer inspiriert die Gruppe: ↑ DEF und ↑ AP.",
//    type: [SkillType.heal, .buff],
    healValue: 1000,
    defAlliesValue: 20,
    effect: "Teammitglieder werden vollständig geheilt. ↑ DEF und ↑ AP der Gruppe.",
    cooldown: 0
)


// --- Alle Helden ---
let gatherPower: Skill = Skill(
    name: "🌀 Kräfte sammeln",
    info: "Der Held greift in dieser Runde nicht an, konzentriert jedoch seine Kräfte, um in der nächsten Runde mit anderen Helden einen mächtigen Angriff auszuführen.",
//    type: [SkillType.buff],
    effect: "Ermöglicht einen kombinierten Angriff mit den anderen Gruppenmitgliedern in der nächsten Runde.",
    cooldown: 4
)



//MARK: --- ENEMIES


// --- Thanos ---

let thanosInfinityBeam: Skill = Skill(
    name: "☄️ Infinity Beam",
    info: "Thanos entfesselt die Kraft eines Infinity-Steins, der einem einzelnen Gegner großen Schaden zufügt.",
//    type: [SkillType.damage],
    damageValue: 300,
    effect: "Verursacht großen Schaden an einem einzelnen Ziel.",
    cooldown: 0
)

let thanosInfinityBlast: Skill = Skill(
    name: "💥 Infinity Blast",
    info: "Thanos nutzt die Macht des Infinity Gauntlet, um Flächenschaden an allen Gegnern zu verursachen.",
//    type: [SkillType.damage, .areaDamage],
    damageValue: 100,
    effect: "Verursacht Flächenschaden an allen Gegnern.",
    cooldown: 0
)

let thanosInfinityClone: Skill = Skill(
    name: "👥 Infinity Clone",
    info: "Thanos erschafft einen Gegner, der für 2 Runden mitkämpft.",
//    type: [SkillType.summon],
    effect: "Beschwört einen zusätzlichen Gegner, der an Thanos Seite kämpft.",
    cooldown: 3
)


// --- Space Pirate ---
let pirateBlasterAttack: Skill = Skill(
    name: "🦜 Papageien Angriff",
    info: "Der abgerichtete Papagei führt einen gezielten Schlag gegen ein Ziel aus.",
    damageValue: 80,
    effect: "Fügt einem Helden Schaden zu."
)

let pirateFire: Skill = Skill(
    name: "🔥 Flächenfeuer",
    info: "Eine Salve an Feuerprojektilen, die Flächenschaden anrichten.",
    damageValue: 50,
    effect: "Fügt allen Helden Schaden zu."
)


