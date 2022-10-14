//
//  PlayerViewController.swift
//  MedicMeditationApp
//
//  Created by Tiara H on 13/10/22.
//

import UIKit

class PlayerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        dismiss(animated: true)
    }
    

}

// 1 implement use modal
extension UIViewController {
    func presentPlayerViewController() {
        let storyboard = UIStoryboard(name: "Player", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "player") as! PlayerViewController
        
        // configure modal
        viewController.modalPresentationStyle = .fullScreen
        viewController.modalTransitionStyle = .coverVertical
        
        present(viewController, animated: true)
        
    }
    
    // 2 implement by push
//    func showPlayerViewController() {
//        let storyboard = UIStoryboard(name: "Player", bundle: nil)
//        let viewController = storyboard.instantiateViewController(withIdentifier: "player") as! PlayerViewController
//
//        self.navigationController?.pushViewController(viewController, animated: true)
//    }
}

