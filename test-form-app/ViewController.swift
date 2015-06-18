//
//  ViewController.swift
//  test-form-app
//
//  Created by dani on 15/06/2015.
//  Copyright (c) 2015 dani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.addFieldSubLayer(userNameField)
        self.addFieldSubLayer(passwordField)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addFieldSubLayer(field: UITextField){
        
        var border = CALayer()
        var width = CGFloat(2.0)
        
        border.borderColor = UIColor.darkGrayColor().CGColor
        border.frame = CGRect(x: 0, y: field.frame.size.height - width, width: field.frame.size.width, height: field.frame.size.height)
        
        border.borderWidth = width
        
        field.layer.addSublayer(border)
        field.layer.masksToBounds = true
    }
}

