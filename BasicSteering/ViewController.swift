//
//  ViewController.swift
//  BasicSteering
//
//  Created by user on 16.06.17.
//  Copyright © 2017 user. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var curDir = 0
    
    @IBOutlet var rbutton: UIButton!
    @IBOutlet var lbutton: UIButton!
    @IBOutlet var vbutton: UIButton!
    var forward = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func busclicked(_ sender: Any) {
        
    }
    
    @IBAction func rightcklicked(_ sender: Any) {
        curDir = 3
        if let image = UIImage(named: "rV.png") {
            rbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "vL.png") {
            vbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "lL.png") {
            lbutton.setImage(image, for: [])
        }
    }
    
    @IBAction func leftClicked(_ sender: Any) {
        curDir = 1
        if let image = UIImage(named: "rL.png") {
            rbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "vL.png") {
            vbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "lV.png") {
            lbutton.setImage(image, for: [])
        }
    }
    
    @IBAction func aheadClicked(_ sender: Any) {
        curDir = 2
        if let image = UIImage(named: "rL.png") {
            rbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "vV.png") {
            vbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "lL.png") {
            lbutton.setImage(image, for: [])
        }
    }
}

