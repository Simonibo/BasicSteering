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
    
    @IBAction func busclicked(_ sender: Any) {
    }
    
    @IBAction func rightcklicked(_ sender: Any) {
        curDir = 3
    }
    
    @IBAction func leftClicked(_ sender: Any) {
        curDir = 1
    }
    
    @IBAction func aheadClicked(_ sender: Any) {
        curDir = 2
    }
    
    @IBOutlet weak var leftButton: UIButton!
    var forward = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func fbchanged(_ sender: Any) {
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
    }
}

