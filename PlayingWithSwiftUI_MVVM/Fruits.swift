//
//  Fruits.swift
//  PlayingWithSwiftUI_MVVM
//
//  Created by Ricky Suprayudi on 14/05/24.
//

import Foundation

struct Fruits: Identifiable, Hashable {
    var id: UUID
    var name: String
    var description: String
    var favorite: Bool
    var count: Int
}

var defaultFruit = Fruits(id: UUID(), name: "noFruit", description: "noDesc", favorite: true, count: 0)
var tangerine = Fruits(id: UUID(), name: "tangerine", description: "yellow, sweet sour", favorite: false, count: 3)
var apple = Fruits(id: UUID(), name: "apple", description: "red and sweet", favorite: false, count: 5)
var durian = Fruits(id: UUID(), name: "durian", description: "strong smell", favorite: false, count: 2)
var mangosteen = Fruits(id: UUID(), name: "mangosteen", description: "sweet and sticky", favorite: false, count: 4)
