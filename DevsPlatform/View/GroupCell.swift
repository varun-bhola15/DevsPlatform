//
//  GroupCell.swift
//  DevsPlatform
//
//  Created by varun bhola on 25/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit

class GroupCell: UITableViewCell {

    @IBOutlet weak var groupTitleLbl: UILabel!
    
    @IBOutlet weak var groupDescLbl: UILabel!
    @IBOutlet weak var menberCountLbl: UILabel!
    
    func configureCell (title:String,description: String,memberCount:Int){
        self.groupTitleLbl.text = title
        self.groupDescLbl.text = description
        self.menberCountLbl.text = "\(memberCount) members."
    }
}
