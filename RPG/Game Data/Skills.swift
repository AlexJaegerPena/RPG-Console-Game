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
    info: "Star-Lords charakteristische Waffen, die verschiedene Elementarangriffe auslösen können.",
    damageValue: 20,
    defTargetValue: 5,
    effect: "Verursacht Schaden und ↓ Defensive des Gegners.",
    cooldown: 1
)

let starLordDanceOff: Skill = Skill(
    name: "🪩 Dance-Off",
    info: "Ein überraschend von StarLord eingefordertes Dance Battle, das die Gegner ablenkt und verwirrt.",
//    type: [SkillType.changeAp],
    damageValue: 5,
    apTargetValue: 5,
    apAlliesValue: 5,
    
    effect: "↓ Angriffskraft des Gegners. ↑ Angriffskraft der Gruppe.",
    cooldown: 2
)


// --- Gamora ---
let gamoraKreePoison: Skill = Skill(
    name: "🗡️ Kree Gift",
    info: "Gamora setzt ihre legendären Klingen ein, die als die tödlichsten Waffen im Universum gelten.",
//    type: [SkillType.changeHp],
    damageValue: 25,
    effect: "🧪 vergiftet den Gegner.",
    cooldown: 1

)

let gamoraDaughtersFury: Skill = Skill(
    name: "⛓️‍💥 Daughter's Fury",
    info: "Ein sehr starker Angriff, bei dem Gamora ihren inneren Zorn entfesselt.",
//    type: [SkillType.changeHp],
    damageValue: 10,
    apAlliesValue: 1,
    effect: "Der Angriff verletzt mehrere Gegner. ↑ Angriffskraft der Gruppe.",
    cooldown: 3
)


// --- Drax ---
// Single target
let draxTwinBlades: Skill = Skill(
    name: "⚔️ Doppelklingen",
    info: "Drax' ikonische Messer, die perfekt für schnelle und tödliche Angriffe sind.",
//    type: [SkillType.changeHp],
    damageValue: 10,
    apAlliesValue: 1,
    effect: "Verursacht einen hohen Einzelziel-Schaden.",
    cooldown: 1
)

// Area target
let draxProvocation: Skill = Skill(
    name: "‼️ Provokation",
    info: "Drax brüllt laut und verringert die Defensive der Gegner und erhöht die Defensive der Gruppe.",
//    type: [SkillType.rage, .changeDef],
    defTargetValue: 10,
    defAlliesValue: 10,
    effect: "↓ Defensive des Gegners. ↑ Defensive der Gruppe.",
    cooldown: 1
)

// Bonus
let draxLiteralConfusion: Skill = Skill(
    name: "🗯️ Buchstäbliche Verwirrung",
    info: "Drax gibt einen seiner legendären Kommentare von sich, der so absurd ist, dass der Gegner kurzzeitig verwirrt ist",
//    type: [SkillType.debuff],
    effect: "Der Gegner wird verwirrt 🌀 und greift sich selbst an.",
    cooldown: 2
)


// --- Rocket ---

// singletarget
let rocketTrapOMatic: Skill = Skill(
    name: "🪤 Trap-O-Matic",
    info: "Rocket wirft eine Falle, die einen Gegner einfängt.",
//    type: [SkillType.debuff],
    effect: "Der Gegner ist für eine Runde ⛓️ gefangen und kann nicht angreifen",
    cooldown: 2
)

//areatarget
let rocketGadgetGatling: Skill = Skill(
    name: "🧨 Gadget Turm",
    info: "Ein automatischer Geschützturm, der mit Allerlei von Rocket gefundenem Kram um sich schießt und dabei mehrere Gegner trifft",
//    type: [SkillType.damage, .buff],
    damageValue: 5,
    effect: "Die Gegner werden vom Geschützturm getroffen.",
    cooldown: 2
)

//bonus
let rocketRageOfTheRacoon: Skill = Skill(
    name: "⚡️ Der Zorn des Racoon",
    info: "Von der Wut und dem Schmerz über Groots Opfer angetrieben, entfesselt Rocket eine unkontrollierte Angriffssalve mit all seinen Waffen. Angriffsstärke der Gruppe wird erhöht.",
//    type: [SkillType.damage, .buff],
    damageValue: 40,
    apAlliesValue: 1,
    effect: "Greift alle Gegner gleichzeitig an und verursacht hohen Flächenschaden. ↑ Angriffskraft der Gruppe, da die Entschlossenheit wächst, den Kampf zu gewinnen.",
    cooldown: 4
)
  

// --- Groot ---

let grootLifeBloom: Skill = Skill(
    name: "🪷 Lebensblüte",
    info: "Groot heilt die Gruppe mit einem massiven Lebensregen, bei dem er seine Wurzeln in den Boden schlägt und die natürliche Heilenergie freisetzt. ",
//    type: [SkillType.heal],
    healValue: 50,
    defAlliesValue: 10,
    effect: "↑ HP und ↑ Defensive aller Gruppenmitglieder.",
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
    info: "Groot opfert sich selbst, um seine tiefe Verbindung zu seinen Freunden zu zeigen. Er heilt alle Mitglieder der Gruppe vollständig und entfernt alle negativen Effekte während er sich selbst für den Rest des Kampfes zurückzieht. Sein Opfer inspiriert die Gruppe, was die Verteidigung und den Angriff erhöht.",
//    type: [SkillType.heal, .buff],
    healValue: 100,
    defAlliesValue: 20,
    effect: "Alle Teammitglieder werden vollständig geheilt und alle negativen Effekte entfernt. ↑ Defensive und ↑ Angriffspunkte der Gruppe.",
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
    damageValue: 60,
    effect: "Verursacht großen Schaden an einem einzelnen Ziel.",
    cooldown: 0
)

let thanosInfinityBlast: Skill = Skill(
    name: "💥 Infinity Blast",
    info: "Thanos nutzt die Macht des Infinity Gauntlet, um Flächenschaden an allen Gegnern zu verursachen.",
//    type: [SkillType.damage, .areaDamage],
    damageValue: 20,
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
    name: "🔫 Blaster Angriff",
    info: "Ein gezielter Blaster Schuss, der einen Helden trifft und Schaden zufügt.",
    damageValue: 30,
    effect: "Fügt einem Helden Schaden zu."
)

let pirateFire: Skill = Skill(
    name: "🔥 Flächenfeuer",
    info: "Eine Salve an Feuerprojektilen, die Flächenschaden anrichten.",
    damageValue: 10,
    effect: "Fügt allen Helden Schaden zu."
)


