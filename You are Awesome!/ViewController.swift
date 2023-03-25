//
//  ViewController.swift
//  You are Awesome!
//
//  Created by 顏逸修 on 2023/3/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        print("viewDidLoad has run! 👍")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        //print("The message button was pressed! 😎")
        messageLabel.textAlignment = .left
        if (messageLabel.text == "You Are Awesome!") {
            messageLabel.text = "You pressed the button, Great!✌️"
            messageLabel.textColor = UIColor.brown
        } else {
            messageLabel.text = "You Are Awesome!"
            messageLabel.textColor = .systemPurple
            messageLabel.textAlignment = .center
            
        }
    }
    
    
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Another message."
        messageLabel.textColor = UIColor.green
        messageLabel.textAlignment = .right
    }
}

