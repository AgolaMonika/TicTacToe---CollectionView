//
//  T3Cell.swift
//  TicTac
//
//  Created by DCS on 26/11/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class T3Cell: UICollectionViewCell {
    private let myImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    func setupCell(with status: Int){
        contentView.addSubview(myImageView)
        contentView.layer.borderWidth = 2
        contentView.layer.borderColor = UIColor.lightGray.cgColor
        myImageView.frame = CGRect(x: 10, y: 10, width: 60, height: 60)
        
        let name = (status == 0) ? ("Zero") : (status == 1 ? "Cross" : "")
        myImageView.image = UIImage(named : name)
    }
}
