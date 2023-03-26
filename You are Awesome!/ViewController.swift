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
    @IBOutlet weak var playSoundSwitch: UISwitch!
    @IBOutlet weak var imageView: UIImageView!
    
    var messageIndex = -1
    var soundNumber = -1
    var totalSoundsNumber = 3
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = ""
        // print("viewDidLoad has run! 👍")
    }
    
    
    func playSound(soundName: String) {
        // set sound when button clicked
        // set sound data from assets package
        if let sound = NSDataAsset(name: soundName) {
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
    
    
    func noRepeatRandomData(dataLength: Int, index: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in: 0...dataLength)
        } while newIndex == index
        
        return newIndex
    }


    @IBAction func messageButtonPressed(_ sender: UIButton) {
        // print("The message button was pressed! 😎")
        
        // set messages array
        let messages = ["First Message", "You Are Awesome!", "You Are Great, I need more message", "You Are Da Bomb", "Last Message"]
        // use noRepeatRandomData function to random data in messages array
        messageIndex = noRepeatRandomData(dataLength: messages.count - 1, index: messageIndex)
        // set message on messageLabel
        messageLabel.text = messages[messageIndex]
        
        
        // set image on imageView
        imageView.image = UIImage(named: "bird")
        
        
        // use noRepeatRandomData function to random sounds file
        soundNumber = noRepeatRandomData(dataLength: totalSoundsNumber, index: soundNumber)
        // use playSound() function to play sound
        if playSoundSwitch.isOn {
            playSound(soundName: "sound\(soundNumber)")
        }
        
    }
    
    
    @IBAction func anotherMessageButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Another message."
        messageLabel.textColor = UIColor.green
        messageLabel.textAlignment = .right
        imageView.image = UIImage(named: "earth")
    }
    
    
    
    @IBAction func playSoundToggled(_ sender: UISwitch) {
        if !sender.isOn && audioPlayer != nil {
            audioPlayer.stop()
        }
    }
}

