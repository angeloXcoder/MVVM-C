//
//  File.swift
//  SnapKit TableView
//
//  Created by Mac on 8/14/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import Foundation
import UIKit
class customCell : UITableViewCell{
    static var cellIdentifier = "customeCell"
    let imageCellView : UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius  = 8.0
        return imageView
        
    }()
    
    let sportNameLabel : UILabel = {
       let lbl = UILabel()
        lbl.textColor = .black
        lbl.font = UIFont(name:"HelveticaNeue-UltraLight", size: 20.0)
        lbl.numberOfLines = 0
        return lbl
    }()
    
    let describLbl : UILabel = {
        let lblTitle = UILabel()
        lblTitle.textColor = .black
        lblTitle.font = UIFont(name:"HelveticaNeue-UltraLight", size: 17.0)
        lblTitle.numberOfLines = 0
        return lblTitle
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //self.backgroundColor = UIColor(white: 0.20, alpha: 0.1)
        setupImageView()
        setUpLbl()
        setUpDescibeLbl()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("Can't implement Custom Cell")
    }
    
    func setupImageView() {
        self.addSubview(imageCellView)
        self.imageCellView.snp.makeConstraints(){
            (imageCellView) in
            imageCellView.width.height.equalTo(50)
            imageCellView.topMargin.left.equalTo(50)
        }
        
    }
    func setUpLbl(){
        self.addSubview(sportNameLabel)
        self.sportNameLabel.snp.makeConstraints(){
        (lbl) in
//        lbl.height.greaterThanOrEqualTo(40.0)
//        lbl.leading.equalTo(50)
            lbl.top.equalTo(20)
           // lbl.leading.trailing.equalTo(self.imageCellView.snp.left).offset(32) // 3
//            lbl.right.equalTo(self.imageCellView.snp_width).offset(20)
            lbl.left.equalTo(self.imageCellView.snp_left).offset(120)
            lbl.right.equalTo(-20)
        }

    }
    
    func setUpDescibeLbl(){
        self.addSubview(describLbl)
        self.describLbl.snp.makeConstraints(){
            (lbl) in
           
            lbl.top.equalTo(self.sportNameLabel.snp_bottom).offset(20)
            lbl.left.equalTo(self.imageCellView.snp_left).offset(120)
            lbl.right.equalTo(-20)
        }
        
    }
    
    func configureCell(sportModel: SportModel) {
        self.imageView?.image    = UIImage(named: "sport")
        self.sportNameLabel.text = "\(sportModel.sportNameStr)"
        self.describLbl.text     = "\(sportModel.sportTypeStr)"
    }
    
    
 
    
}
