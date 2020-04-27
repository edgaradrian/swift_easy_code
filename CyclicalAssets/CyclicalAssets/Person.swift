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
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
    }//init
    
    deinit {
        print("\(self) is being deallocated")
    }//deinit
    
    func takeOwnership(of asset: Asset) {
        asset.owner = self
        assets.append(asset)
    }//takeOwnership
    
    
}//Person class
