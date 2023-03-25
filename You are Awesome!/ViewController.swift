//
//  ViewController.swift
//  You are Awesome!
//
//  Created by 顏逸修 on 2023/3/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    var messageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // print("viewDidLoad has run! 👍")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // print("The message button was pressed! 😎")
        
        let messages = ["First Message", "You Are Awesome!", "You Are Great", "You Are Da Bomb", "Last Message"]
        
        messageLabel.text = messages[messageIndex]
        messageIndex += 1
        if messageIndex >= messages.count {
            messageIndex = 0
        }
        
        
        imageView.image = UIImage(named: "bird")
    }
    
    
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Another message."
        messageLabel.textColor = UIColor.green
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "earth")
    }
}

