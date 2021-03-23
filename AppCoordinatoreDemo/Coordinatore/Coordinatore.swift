//
//  Coordinatore.swift
//  AppCoordinatoreDemo
//
//  Created by Asis on 3/23/21.
//

import UIKit

protocol Coordinatore{
    var childCoordinatore:[Coordinatore]{get set}
    var naviagationController: UINavigationController {get set}
    
    func start()
}
