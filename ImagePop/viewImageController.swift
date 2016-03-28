//
//  viewImageController.swift
//  ImagePop
//
//  Created by Lifoma Salaam on 3/27/16.
//  Copyright © 2016 CesaSalaam. All rights reserved.
//

import Foundation

class viewImageController: UIViewController{
    var photo: UIImage?
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        if ((self.photo) != nil){
            imageView.image = photo
        }
    }

}