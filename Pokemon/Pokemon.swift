//
//  Pokemon.swift
//  Pokemon
//
//  Created by Robbe on 28/09/2026.
//

import SwiftUI

struct Pokemon: Identifiable {
    var id: String { naam }
    var naam: String
    var nummer: Int
    var type1: String
    var type2: String
    var kleur: Color
    var HP: Int
    var speed: Int
}
