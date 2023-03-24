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
        print("viewDidLoad has run! 👍")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        print("The message button was pressed! 😎")
        if (messageLabel.text == "You Are Awesome!") {
            messageLabel.text = "You pressed the button, Great!✌️"
        } else {
            messageLabel.text = "You Are Awesome!"
        }
    }
}

