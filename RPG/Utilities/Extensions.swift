//
//  Extensions.swift
//  RPG
//
//  Created by Alexandra Jäger on 27.02.25.
//

import Foundation


extension String {
    func sTab() -> String {
        return "\t" + self
    }
}

extension String {
    func bTab() -> String {
        return "\t\t" + self
    }
}




extension Hero {
    override var name: String {
        get {
            return "\u{001B}[1m\u{001B}[94m\(super.name)\u{001B}[0m"
        }
        set {
            super.name = newValue
        }
    }
}


extension Enemy {
    override var name: String {
        get {
            return "\u{001B}[33m\u{001B}[1m\(super.name)\u{001B}[0m"
        }
        set {
            super.name = newValue
        }
    }
}


