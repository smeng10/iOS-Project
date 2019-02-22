//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        playSound(idx: sender.tag - 1)
    }
    
    func playSound( idx: Int){
        let sound = ["note1","note2","note3","note4","note5","note6","note7",]
        
        let url = Bundle.main.url(forResource: sound[idx],withExtension:"wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
    }

}

