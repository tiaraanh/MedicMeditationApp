//
//  WelcomeViewController.swift
//  MedicMeditationApp
//
//  Created by Tiara H on 10/10/22.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var startedButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup() {
        startedButton.layer.cornerRadius = 10
        startedButton.layer.masksToBounds = true
        
    }
    
    @IBAction func startedButtonTapped(_ sender: Any) {
        let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "main")
        
        let scene = UIApplication.shared.connectedScenes.first as! UIWindowScene
        let window = scene.windows.first!
        window.rootViewController = viewController
    }
    


}
