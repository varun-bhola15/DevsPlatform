//
//  groupFeedCell.swift
//  DevsPlatform
//
//  Created by varun bhola on 25/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit

class groupFeedCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView!
   
    @IBOutlet weak var emailLbl: UILabel!
    
    @IBOutlet weak var contentLbl: UILabel!
    func configureCell(profileImage:UIImage,email:String,content:String){
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
    }
}
