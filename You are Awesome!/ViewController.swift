//
//  ViewController.swift
//  You are Awesome!
//
//  Created by 顏逸修 on 2023/3/24.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var messageIndex = -1
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // print("viewDidLoad has run! 👍")
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // print("The message button was pressed! 😎")
        
        // set messages array
        let messages = ["First Message", "You Are Awesome!", "You Are Great, I need more message", "You Are Da Bomb", "Last Message"]
        
        // set messageIndex to traversal the messages array
        var newMessageIndex: Int
        
        // choose random message and use repeat(do-while) to avoid the same message show again
        repeat {
            newMessageIndex = Int.random(in: 0...messages.count - 1)
        } while newMessageIndex == messageIndex
        
        // set newMessageIndex to messageIndex
        messageIndex = newMessageIndex
        
        // set message on messageLabel
        messageLabel.text = messages[messageIndex]
        
        // set image on imageView
        imageView.image = UIImage(named: "bird")
        
        // set sound when button clicked
        // set sound data from assets package
        if let sound = NSDataAsset(name: "sound0") {
            // if not nil, create sound
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object.")
            }
        } else {
            // if nil print error message, could not read data from file sound0
            print("ERROR: file \("sound0") did not load.")
        }
    }
    
    
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Another message."
        messageLabel.textColor = UIColor.green
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "earth")
    }
}

