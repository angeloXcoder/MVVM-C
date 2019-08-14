//
//  MainCoordinator.swift
//  SnapKit TableView
//
//  Created by Mac on 8/14/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit
class MainCoordinator : Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let sportVC = SportVC()
        sportVC.coordinator = self
        navigationController.pushViewController(sportVC, animated: false)
    }
    
    func showSportDetialsVC(sportModel : SportModel){
        let sportDetailsVC = SportDetailsVC()
        sportDetailsVC.coordinator = self
        sportDetailsVC.sportModel = sportModel
        navigationController.pushViewController(sportDetailsVC, animated: true)
    }
    
    
}
