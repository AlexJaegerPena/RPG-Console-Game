//
//  Items.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


// --------- ITEMS ---------

var grootsHeilsamen: Item = Item(
    name: "🫘 Groot's Heilsamen",
    effect: "Diese Samen haben eine heilende Wirkung und stellen die HP eines Helden wieder her",
    healValue: 100,
    quantity: 3
)

var starlordsMixtape: Item = Item(
    name: "📼 StarLord's Mix-Tape",
    effect: "Spielt einen zufälligen Song aus Star-Lords legendärem Mix-Tape und erhöht die Angriffsstärke der Gruppe",
    critAlliesValue: 30,
    quantity: 4
)

var gamorasRemedy: Item = Item(
    name: "🏺 Gamora's Trank",
    effect: "Entfernt alle negativen Effekte von der Gruppe",
    changeStatus: State.healed,
    quantity: 3
)

var rocketsBoomBox: Item = Item(
    name: "📻 Rocket's Boom Box",
    effect: "Tragbare Soundbox, die während des Kampfes einen ohrenbetäubenden Bass explodieren lässt. Gegner nehmen Schaden und haben Chance zu paralysieren",
    damageValue: 10,
    changeStatus: State.stunned,
    quantity: 3
)
