//
//  MainViewController.swift
//  MedicMeditationApp
//
//  Created by Tiara H on 10/10/22.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
        
    }
    
    
    func setup() {
        tabBar.tintColor = UIColor.white
        tabBar.unselectedItemTintColor = UIColor(rgb: 0xA0A3B1)
    }
    
   
   
}
