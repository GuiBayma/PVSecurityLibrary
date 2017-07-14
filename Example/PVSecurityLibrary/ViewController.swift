//
//  ViewController.swift
//  PVSecurityLibrary
//
//  Created by guibayma on 07/14/2017.
//  Copyright (c) 2017 guibayma. All rights reserved.
//

import UIKit
import PVSecurityLibrary

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var pvSecurity = PVSecurityKit.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNewPassword()
    }
    
    func setNewPassword() {
        if pvSecurity.saveNewPassword("Test") {
            label.text = "   Save successful.\nVerifying password..."
            DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(4), execute: {
                self.checkPassword()
            })
        }
    }
    
    func checkPassword() {
        if pvSecurity.checkPassword("Test") {
            label.text = "Password verified"
        }
    }

}

