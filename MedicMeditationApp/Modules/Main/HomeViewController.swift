//
//  HomeViewController.swift
//  MedicMeditationApp
//
//  Created by Tiara H on 10/10/22.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        
        
        setup()
    }
    
    
    func setup() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
}



// MARK: - UICollectionViewDataSource
extension HomeViewController: UICollectionViewDataSource {

    // amount of section
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        if collectionView == self.collectionView {
            return 2
        } else {
            return 1
        }
    }
    
    // amount of item in section
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView {
            if section == 0 {
                return 4
            } else {
                return 1
            }

        } else {
            return 2
        }
    }
    
    // to show the item at section
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if collectionView == self.collectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommended", for: indexPath) as! RecommendedViewCell

            let item = indexPath.item
            cell.imageView.image = item == 0 ? UIImage(named: "Calm") : UIImage(named: "Relax")
            cell.titleLabel.text = item == 0 ? "Calm" : "Relax"

            return cell

        } else {

        // section 1 recommendedList
        if indexPath.section == 0 {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "recommendedList", for: indexPath) as! RecommendedListViewCell

            cell.backgroundColor = .clear

            // collectionView to provide data
            cell.collectionView.dataSource = self
            cell.collectionView.delegate = self

            return cell

        // section 2 HomeItemViewCell
        } else {
            let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! HomeItemViewCell

            let item = indexPath.item
            cells.backgroundImageView.backgroundColor = item == 0 ? UIColor.red : UIColor.blue
            cells.titleLabel.text = item == 0 ? "Meditation 101" : "Cardio Meditation"
            cells.subtitleLabel.text = item == 0 ? "Techniques, Benefits, and a Beginner’s How-To" : "Basics of Yoga for Beginners or Experienced Professionals"
            cells.imageView.image = item == 0 ? UIImage(named: "meditation 101") : UIImage(named: "Cardio Meditation")

            return cells

        }

    }

    }

    // func for header
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath)

        let titleLabel = view.viewWithTag(100) as! UILabel
        let subtitleLabel = view.viewWithTag(101) as! UILabel

        if indexPath.section == 0 {
            titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
            titleLabel.text = "Welcome Back!"
            subtitleLabel.isHidden = false
            subtitleLabel.text = "How are you feeling today ?"
        } else {
            titleLabel.font = UIFont.systemFont(ofSize: 22, weight: .light)
            titleLabel.isHidden = true
            subtitleLabel.isHidden = true
            titleLabel.text = "How are you feeling today ?"

        }


        return view
    }

}

// MARK: - UICollectionViewDelegateFlowLayout
extension HomeViewController: UICollectionViewDelegateFlowLayout {

    // size inset for each section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        if collectionView == self.collectionView {
            return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        } else {
            return UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        }

    }
    
    // space size for each item in section
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    // minimum space for each item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }

    // size of item
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if collectionView == self.collectionView {
            return CGSize(width: 65, height: 99)

        } else {

            if indexPath.section == 0 {
                let screenwidth = UIScreen.main.bounds.width
                return CGSize(width: screenwidth, height: 68)

            } else {
                let leftInset: CGFloat = 20.0
                let rightInset: CGFloat = 20.0
                let itemSpacing: CGFloat = 20.0
                let colomn: CGFloat = 2

                let screenwidth = UIScreen.main.bounds.width
                let width = ((screenwidth - (leftInset + rightInset + (itemSpacing * (colomn - 1)))) / colomn)
                let height = 350 / 186 * width
                return CGSize(width: width, height: height)
            }
        }

    }

}


    
    
