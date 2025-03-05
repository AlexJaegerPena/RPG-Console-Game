//
//  Items.swift
//  RPG
//
//  Created by Alexandra Jäger on 25.02.25.
//

import Foundation


// --------- ITEMS ---------

var grootsHeilsamen: Item = Item(
    name: "🫛 Groot's Heilsamen",
    effect: "Diese Samen haben eine heilende Wirkung. ↑ HP eines Helden.",
    healValue: 100,
    changeStatus: State.healed,
    quantity: 3,
    itemAction: []
)

var starlordsMixtape: Item = Item(
    name: "📼 StarLord's Mix-Tape",
    effect: "Spielt einen zufälligen Song aus Star-Lords Mix-Tape. ↑ AP der Gruppe.",
    apAlliesValue: 30,
    quantity: 4,
    itemAction: []
)

var gamorasRemedy: Item = Item(
    name: "🧃 Gamora's Trank",
    effect: "Entfernt alle negativen Effekte von der Gruppe.",
    changeStatus: State.normal,
    quantity: 3,
    itemAction: []
)

var rocketsBoomBox: Item = Item(
    name: "📻 Rocket's Boom Box",
    effect: "Lässt einen ohrenbetäubenden Bass explodieren. Gegner werden 🌀 verwirrt.",
    changeStatus: State.disoriented,
    quantity: 3,
    itemAction: []
)


var itemsArray = [grootsHeilsamen, starlordsMixtape, gamorasRemedy, rocketsBoomBox]
