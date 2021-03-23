//
//  HomeVC.swift
//  AppCoordinatoreDemo
//
//  Created by Asis on 3/23/21.
//

import UIKit

class HomeVC: UIViewController {

    var coordinatore: MainCoordinatore?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapShowFoodVC(_ sender: Any) {
        coordinatore?.navigateTo(screen: .foodVC)
    }
    
    @IBAction func didTapShowFoodDetailsVC(_ sender: Any) {
        coordinatore?.navigateTo(screen: .detailsVC)
    }
}

