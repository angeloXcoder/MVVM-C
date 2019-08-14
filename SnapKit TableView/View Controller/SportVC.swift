//
//  ViewController.swift
//  SnapKit TableView
//
//  Created by Mac on 8/14/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import SnapKit

class SportVC : UIViewController {
    let sportTableView : UITableView = {
        let tablView = UITableView()
        tablView.rowHeight = 100.0
        return tablView
    }()
    
    weak var coordinator : MainCoordinator?
    var sportArray = [SportModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        setableView()
        fillStruct()
    
        
    }
    
    func fillStruct(){
        self.sportArray.append(SportModel(sportNameStr: "Kayak", sportDescribStr: "A boat for one person", sportTypeStr: "Watersports", sportGridStr: Int(275.0), sportScoretr: 10))
        self.sportArray.append(SportModel(sportNameStr: "Kayak", sportDescribStr: "A boat for one person", sportTypeStr: "Watersports", sportGridStr: Int(275.0), sportScoretr: 10))
        self.sportArray.append(SportModel(sportNameStr: "Lifejacket", sportDescribStr: "Protective and fashionable", sportTypeStr: "Watersports", sportGridStr: Int(48.95), sportScoretr: 14))
        self.sportArray.append(SportModel(sportNameStr: "Soccer Ball", sportDescribStr: "FIFA-approved size and weight", sportTypeStr: "Soccer", sportGridStr: Int(19.5), sportScoretr: 32))
        self.sportArray.append(SportModel(sportNameStr: "Corner Flags", sportDescribStr: "Give your playing field a professional touch", sportTypeStr: "Soccer", sportGridStr: Int(34.95), sportScoretr: 1))
        self.sportArray.append(SportModel(sportNameStr: "Stadium", sportDescribStr: "Flat-packed 35,000-seat stadium", sportTypeStr: "Soccer", sportGridStr: Int(79500.0), sportScoretr: 4))
        self.sportArray.append(SportModel(sportNameStr: "Thinking Cap", sportDescribStr: "Improve your brain efficiency by 75%", sportTypeStr: "Chess", sportGridStr: Int(16.0), sportScoretr: 8))
        self.sportArray.append(SportModel(sportNameStr: "Unsteady Chair", sportDescribStr: "Secretly give your opponent a disadvantage", sportTypeStr: "Chess", sportGridStr: Int(29.95), sportScoretr: 3))
        self.sportArray.append(SportModel(sportNameStr: "Human Chess Board", sportDescribStr: "A fun game for the family", sportTypeStr: "Chess", sportGridStr: Int(75.0), sportScoretr: 2))
        self.sportArray.append(SportModel(sportNameStr: "Bling-Bling King", sportDescribStr: "Gold-plated, diamond-studded King", sportTypeStr: "Chess", sportGridStr: Int(1200.0), sportScoretr: 4))
    }
    func setupView() {
        self.view.backgroundColor = .red
        title = "Sport"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    func setableView(){
        self.sportTableView.delegate   = self
        self.sportTableView.dataSource = self
        self.sportTableView.register(customCell.self, forCellReuseIdentifier:customCell.cellIdentifier)
        self.view.addSubview(self.sportTableView)
        self.sportTableView.snp.makeConstraints(){
            (tableView) in
            tableView.edges.equalTo(self.view)
        }
        self.sportTableView.reloadData()
    }
    



}



extension SportVC :UITableViewDelegate,UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.sportArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sportDict = sportArray[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier:customCell.cellIdentifier, for: indexPath) as! customCell
        cell.imageView?.image = UIImage(named: "sport")
       
        cell.sportNameLabel.text = "\(sportDict.sportNameStr)"
        cell.describLbl.text     = "\(sportDict.sportTypeStr)"
        return cell
    }
    public func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         let sportDict = sportArray[indexPath.row]
        self.coordinator?.showSportDetialsVC(sportModel: sportDict)
    }
    
}



