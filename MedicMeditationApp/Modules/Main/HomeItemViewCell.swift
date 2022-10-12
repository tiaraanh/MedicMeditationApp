//
//  HomeItemViewCell.swift
//  MedicMeditationApp
//
//  Created by Tiara H on 11/10/22.
//

import UIKit

class HomeItemViewCell: UICollectionViewCell {
    
    @IBOutlet var playButton: UIButton!
    @IBOutlet var subtitleLabel: UILabel!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var backgroundImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        setup()
    }
    
    func setup() {
        backgroundImageView.layer.cornerRadius = 10
        backgroundImageView.layer.masksToBounds = true
        playButton.layer.cornerRadius = 19
        playButton.layer.masksToBounds = true
    }
}
