//
//  ViewController.swift
//  XylophonE
//
//  Created by Анастасия Ларина on 20.12.2020.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        //Reduces the sender's (the button that got pressed) opacity to half.
        sender.alpha = 0.5
        
        //Code should execute after 0.2 second delay.
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            //Bring's sender's opacity back up to fully opaque.
            sender.alpha = 1.0
            
            playSound(soundName: sender.currentTitle!)
            
        }
        
        func playSound(soundName: String) {
            
            let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            //Code should execute after 0.2 second delay.
           
                
                self.player.play()
                
            
        }
        
    }
}

