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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func fbchanged(_ sender: Any) {
        /*
        var url : URL
        if fb.selectedSegmentIndex == 0 {
            forward = true
            url = URL(string: "https://io.adafruit.com/api/groups/myvalues/send.json?x-aio-key=e03b7fcf6e7c41cab6fc57db7b2102ec&counter=1")!
        } else {
            forward = false
            url = URL(string: "https://io.adafruit.com/api/groups/myvalues/send.json?x-aio-key=e03b7fcf6e7c41cab6fc57db7b2102ec&counter=0")!
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            print("Entered the completionHandler")
            }.resume()
        print(forward)
         */
    }
}

