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
    
    @IBOutlet var busbutton: UIButton!
    @IBOutlet var rbutton: UIButton!
    @IBOutlet var lbutton: UIButton!
    @IBOutlet var vbutton: UIButton!
    var forward = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func stopclicked(_ sender: Any) {
        curDir = 0
        forward = true
        if let image = UIImage(named: "LKWv.png") {
            busbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "rL.png") {
            rbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "vL.png") {
            vbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "lL.png") {
            lbutton.setImage(image, for: [])
        }
        sendSignal()
    }
    
    @IBAction func busclicked(_ sender: Any) {
        if forward, let image = UIImage(named: "LKWh.png") {
            busbutton.setImage(image, for: [])
            forward = false
        } else if !forward, let imagen = UIImage(named: "LKWv.png") {
            busbutton.setImage(imagen, for: [])
            forward = true
        }
        sendSignal()
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
        sendSignal()
    }
    
    @IBAction func leftClicked(_ sender: Any) {
        curDir = 2
        if let image = UIImage(named: "rL.png") {
            rbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "vL.png") {
            vbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "lV.png") {
            lbutton.setImage(image, for: [])
        }
        sendSignal()
    }
    
    @IBAction func aheadClicked(_ sender: Any) {
        curDir = 1
        if let image = UIImage(named: "rL.png") {
            rbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "vV.png") {
            vbutton.setImage(image, for: [])
        }
        if let image = UIImage(named: "lL.png") {
            lbutton.setImage(image, for: [])
        }
        sendSignal()
    }
    
    func sendSignal() {
        let counter = (curDir == 0 ? 0 : ((forward ? 0 : 1) * 3 + curDir))
        var request = URLRequest(url: URL(string: "https://io.adafruit.com/api/groups/myvalues/send.json?x-aio-key=e03b7fcf6e7c41cab6fc57db7b2102ec&counter=" + String(counter))!)
        request.httpMethod = "POST"
        let session = URLSession.shared
        
        session.dataTask(with: request) {data, response, err in
            print("senden...")
            }.resume()
    }
}

