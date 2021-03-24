//
//  ViewController.swift
//  zaila
//
//  Created by macbook on 2/17/21.
//  Copyright © 2021 macbook. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
 var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playSound(_ sender: Any) {
        
        
        func playSound() {
            
            guard let url = Bundle.main.url(forResource: "D", withExtension: "wav") else { return }

            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                try AVAudioSession.sharedInstance().setActive(true)

                let player = try AVAudioPlayer(contentsOf: url)

                player.play()

            } catch let error {
                print(error.localizedDescription)
            }
        }
    }
    
}

