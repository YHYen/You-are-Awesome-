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
    
    var messageIndex = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // print("viewDidLoad has run! 👍")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // print("The message button was pressed! 😎")
        
        let messages = ["First Message", "You Are Awesome!", "You Are Great, I need more message", "You Are Da Bomb", "Last Message"]
        var newMessageIndex: Int
        
        repeat {
            newMessageIndex = Int.random(in: 0...messages.count - 1)
        } while newMessageIndex == messageIndex
        
        messageIndex = newMessageIndex
        messageLabel.text = messages[messageIndex]
        
        
        
        
        
        imageView.image = UIImage(named: "bird")
    }
    
    
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Another message."
        messageLabel.textColor = UIColor.green
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "earth")
    }
}

