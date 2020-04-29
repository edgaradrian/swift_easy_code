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
        //Silver Challenge
        accountant.gained(asset) {
            guard let owner = asset.owner else {
                asset.owner = self
                assets.append(asset)
                return
            }
         
            print("Sorry! \(asset) belongs to \(owner)")
        }
        //Silver Challenge
    }//takeOwnership
    
    func netWorthDidChange(to netWorth: Double) {
        print("The net worth of \(self) is now \(netWorth)")
    }//netWorthDidChange
    
    func useNetWorthChangedHandler(handler: @escaping (Double) -> Void) {
        accountant.netWorthChangedHandler = handler
    }//useNetWorthChangedHandler
    
    
}//Person class
