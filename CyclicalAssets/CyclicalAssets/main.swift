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

edgar = nil
print("the edgar variable is now \(edgar)")

