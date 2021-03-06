//
//  objects.swift
//  ImagePop
//
//  Created by Lifoma Salaam on 3/27/16.
//  Copyright © 2016 CesaSalaam. All rights reserved.
//

import UIKit

class imageObject: NSObject{
    // image class
    var entityId: String?
    var name: String?
    var image: UIImage?
    var place: String?
    
    override func hostToKinveyPropertyMapping() -> [NSObject : AnyObject]! {
        //mapping objects propeties to properties in kinvey
        return [
            "entityId" : KCSEntityKeyId, //the required _id field
            "name" : "name",
            "image" : "image",
            "place" : "place"
        ]
    }
    
    override class func kinveyPropertyToCollectionMapping() -> [NSObject : AnyObject]! {
        //saving image property to different collection called images
        return [
            "image" : KCSFileStoreCollectionName,
        ]
    }
    
    override func referenceKinveyPropertiesOfObjectsToSave() -> [AnyObject]! {
        return ["image"]
    }
}