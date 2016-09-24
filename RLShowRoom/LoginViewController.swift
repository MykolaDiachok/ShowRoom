//
//  ViewController.swift
//  RLShowRoom
//
//  Created by Mikola Dyachok on 9/16/16.
//  Copyright © 2016 Mykola Diachok. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    //test
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.tfEmail.setLeftImage(imageName: "mail")
        
        self.tfPassword.setLeftImage(imageName: "password")
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

