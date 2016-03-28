//
//  createUserPage.swift
//  ImagePop
//
//  Created by Lifoma Salaam on 3/27/16.
//  Copyright © 2016 CesaSalaam. All rights reserved.
//

import UIKit
class createUserPageController: UIViewController{
    
    @IBOutlet var password: UITextField!
    
    @IBOutlet var username: UITextField!
    
    @IBAction func createAccount(sender: AnyObject) {
        print("create")
        let whitespaceSet = NSCharacterSet.whitespaceCharacterSet()
        let userNameText = username.text
        let passwordText = password.text
        var finalUserNameText = ""
        var finalPasswordText = ""
        if userNameText!.stringByTrimmingCharactersInSet(whitespaceSet) == "" {
            print("first if")
            // this statement stops user from being able to add white spaces to table
            return
        }
        if userNameText![userNameText!.endIndex.predecessor()] == " "{
            print(userNameText?.characters.count)
            
            for char in userNameText!.characters{
                if char != " "{
                    finalUserNameText.append(char)
                }
            }
            return
            
        }
        if passwordText!.stringByTrimmingCharactersInSet(whitespaceSet) == "" {
            // this statement stops user from being able to add white spaces to table
            return
        }
        if passwordText![passwordText!.endIndex.predecessor()] == " "{
            
            print(passwordText?.characters.count)
            
            for char in passwordText!.characters{
                
                if char != " "{
                    
                    finalPasswordText.append(char)
                    
                }
            }
            createUser(finalUserNameText, password: finalPasswordText)
            self.performSegueWithIdentifier("CAtoUser", sender: nil)
            return
            
        }
        createUser(userNameText!, password: passwordText!)
        self.performSegueWithIdentifier("CAtoUser", sender: nil)
        //space after word
        
    }
    
    func createUser(name: String, password: String){
        KCSUser.userWithUsername(
            name,
            password: password,
            fieldsAndValues: nil,
            withCompletionBlock: { (user: KCSUser!, errorOrNil: NSError!, result: KCSUserActionResult) -> Void in
                if errorOrNil == nil {
                    print(user)
                } else {
                    //there was an error with the create
                    print(errorOrNil)
                }
            }
        )
        
    }

    
}