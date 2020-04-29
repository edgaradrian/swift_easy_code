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
    let accountant = Accountant()
    var assets = [Asset]()
    
    var description: String {
        return "Person(\(name))"
    }
    
    init(name: String) {
        self.name = name
        
        accountant.netWorthChangedHandler = {
            [weak self] netWorth in
            
            self?.netWorthDidChange(to: netWorth)
            return
        }
        
    }//init
    
    deinit {
        print("\(self) is being deallocated")
    }//deinit
    
    func takeOwnership(of asset: Asset) {
        
        accountant.gained(asset) {
            asset.owner = self
            assets.append(asset)
        }
        
    }//takeOwnership
    
    func netWorthDidChange(to netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }//netWorthDidChange
    
}//Person class
