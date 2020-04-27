//
//  main.swift
//  CyclicalAssets
//
//  Created by Edgar Ruiz on 27/04/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Foundation

var edgar: Person? = Person(name: "Edgar")
print("created \(edgar)")

var laptop: Asset? = Asset(name: "Shiny Laptop", value: 1_500.0)
var hat: Asset? = Asset(name: "Cowboy Hat", value: 175.0)
var backpack: Asset? = Asset(name: "Blue Backpack", value: 45.0)

edgar = nil
print("the edgar variable is now \(edgar)")

laptop = nil
hat = nil
backpack = nil
