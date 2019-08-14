//
//  SportDetailsVC.swift
//  SnapKit TableView
//
//  Created by Mac on 8/14/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit
class SportDetailsVC : UIViewController {
    weak var coordinator : MainCoordinator?
    var sportModel :SportModel?
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUIView()
    
    }
    func setupUIView(){
        self.view.backgroundColor = UIColor(red:225.0 , green: 212.0, blue: 212.0, alpha: 1)
        title = sportModel?.sportNameStr
        
    }
    
}

