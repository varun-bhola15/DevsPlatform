
//
//  createPostVC.swift
//  DevsPlatform
//
//  Created by varun bhola on 14/01/18.
//  Copyright © 2018 varun15bhola. All rights reserved.
//

import UIKit
import Firebase
class createPostVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var sendBtn: UIButton!
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
       sendBtn.bindToKeyboard()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.emailLbl.text = Auth.auth().currentUser?.email
    }
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if textView.text != nil && textView.text != "Say something here ..."
        {
            sendBtn.isEnabled = false
            DataService.instance.uploadPost(withMeaasge: textView.text, forUid: (Auth.auth().currentUser?.uid)!, withGroupKey: nil, sendComplete: { (isComplete) in
                if isComplete{
                    self.sendBtn.isEnabled = true
                    self.dismiss(animated: true, completion: nil)
                }else{
                    self.sendBtn.isEnabled = true
                     print("There was an are error!")
                }
            })
        }
    }
}
extension createPostVC: UITextViewDelegate
{
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.text = ""
    }
}









