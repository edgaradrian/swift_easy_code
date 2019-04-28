//
//  main.swift
//  dateListSwift
//
//  Created by Edgar Adrián on 3/1/19.
//  Copyright © 2019 Edgar Adrián. All rights reserved.
//

import Foundation

let now: Date = Date()
let tomorrow: Date = now.addingTimeInterval(24 * 60 * 60)
let yesterday: Date = now.addingTimeInterval(-24 * 60 * 60)

var array: Array = Array(arrayLiteral: now, tomorrow, yesterday)

for d in array {
    print("Object is \(d.description)")
}

