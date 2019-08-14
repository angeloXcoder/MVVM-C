//
//  Coordinator.swift
//  SnapKit TableView
//
//  Created by Mac on 8/14/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var childCoordinators    : [Coordinator] {get set}
    var navigationController : UINavigationController {get set}
    func start()
}
