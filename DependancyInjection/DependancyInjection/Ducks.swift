//
//  Ducks.swift
//  DependancyInjection
//
//  Created by MohamedRafat on 1/14/19.
//  Copyright © 2019 LogicSoftZone. All rights reserved.
//

// MARK: - Dependancy Injection

import Foundation

protocol Flying {
    func fly()
}

class Duck{
    
    let _flaying: Flying
    
    init(flying: Flying) {
        self._flaying = flying
    }
    
    func fly(){
        _flaying.fly()
    }
}

// Different Flaying Behavior For Ducks

class EgyptionDuck: Flying{
    
    func fly() {
        print("Wow, Egyption Duck is Faster.")
    }
}

class RommanDuck: Flying{
    
    func fly() {
        print("Ohh, Romman Duck Can't Fly.")
    }
}











