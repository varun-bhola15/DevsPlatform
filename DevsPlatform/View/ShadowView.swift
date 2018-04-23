//
//  ShadowView.swift
//  DevsPlatform
//
//  Created by varun bhola on 12/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }

    func setUpView(){
        
    }
}
