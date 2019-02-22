//
//  ViewController.swift
//  MagicEightBall
//
//  Created by SipingMeng on 18/02/2019.
//  Copyright © 2019 SipingMeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getAnswerButton(_ sender: UIButton) {
        randomAnswer()
    }
    
    func randomAnswer(){
        var ans = arc4random_uniform(5);
        let ansArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
        ballImage.image = UIImage(named: ansArray[Int(ans)])
    }
}

