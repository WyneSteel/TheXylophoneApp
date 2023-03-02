//
//  ViewController.swift
//  TheXylophoneApp
//
//  Created by Wynelher Tagayuna on 3/2/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{

    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func theSoundButton(_ sender: UIButton) {
        if let soundName = sender.titleLabel{
            // Play audio file on pressed
            let url = Bundle.main.url(forResource: soundName.text, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
            // Change button alpha on pressed
            sender.alpha = 0.5
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                sender.alpha = 1.0
            }
        }
    }
}

