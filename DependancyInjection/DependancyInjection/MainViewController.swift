//
//  ViewController.swift
//  DependancyInjection
//
//  Created by MohamedRafat on 1/14/19.
//  Copyright © 2019 LogicSoftZone. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var duck: Duck?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // I'm Egyption Duck
        activateEgyptionDuck()
        duck?.fly()
        
        // I'm Romman Duck
        activateRommanDuck()
        duck?.fly()
    }
    
    func activateEgyptionDuck(){
        let egyptionDuckFlying = EgyptionDuck()
        duck = Duck(flying: egyptionDuckFlying)
    }
    
    func activateRommanDuck(){
        let rommanDuckFlying = RommanDuck()
        duck = Duck(flying: rommanDuckFlying)
    }
}

extension MainViewController {
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
}


