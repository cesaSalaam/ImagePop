//
//  userPageController.swift
//  ImagePop
//
//  Created by Lifoma Salaam on 3/27/16.
//  Copyright © 2016 CesaSalaam. All rights reserved.
//

import UIKit
class userPageController: UIViewController{
    
    @IBAction func pickAndCapture(sender: AnyObject) {
        self.performSegueWithIdentifier("toImageControls", sender: nil)
    }
    
    @IBAction func logOut(sender: AnyObject) {
        KCSUser.activeUser().logout()
        self.performSegueWithIdentifier("logOutSeg", sender: self)
    }
}