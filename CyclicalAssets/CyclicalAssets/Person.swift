//
//  Person.swift
//  CyclicalAssets
//
//  Created by Edgar Ruiz on 27/04/20.
//  Copyright © 2020 Edgar Ruiz. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible {
    let name: String
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
    }//init
    
    deinit {
        print("\(self) is being deallocated")
    }//deinit
    
}//Person class
