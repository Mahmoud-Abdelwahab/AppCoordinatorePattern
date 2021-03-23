//
//  Storyboarded.swift
//  AppCoordinatoreDemo
//
//  Created by Asis on 3/23/21.
//

import UIKit

protocol Storyboarded {
    static func instantiated()-> Self
}

extension Storyboarded where Self: UIViewController{
    static func instantiated()-> Self{
        let id = String(describing: self)
        // uou can makr it more customizable be passing storyboard name here ("Main")
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
}
