//
//  MainCoordinatore.swift
//  AppCoordinatoreDemo
//
//  Created by Asis on 3/23/21.
//

import UIKit

enum Screens{
    case foodVC
    case detailsVC
    case settingVC
}

class MainCoordinatore: Coordinatore{

    var childCoordinatore: [Coordinatore] = []
    
    var naviagationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.naviagationController = navigationController
    }
    
    func start() {
        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
        vc.coordinatore = self
        self.naviagationController.pushViewController(vc, animated: true)
    }
    

    
    func navigateTo(screen:Screens){
        switch screen {
        case .foodVC:
           instantiatVC(soryboardName: "Main", VC: FoodVC())
        case .detailsVC:
            instantiatVC(soryboardName: "Main", VC: FoodDetailsVC())
        case .settingVC:
            instantiatVC(soryboardName: "Main", VC: SettingVC())
        }
    }
    
     func  instantiatVC<T:UIViewController>(soryboardName: String ,VC: T ){
        
        let storyBoard = UIStoryboard(name: soryboardName, bundle:nil)
 
        let vc = storyBoard.instantiateViewController(withIdentifier: String(describing: type(of: VC)))
        self.naviagationController.pushViewController(vc, animated: true)
    }
    
 
    
}
