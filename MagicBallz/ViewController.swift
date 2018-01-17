//
//  ViewController.swift
//  MagicBallz
//
//  Created by Weston Gibler on 1/12/18.
//  Copyright © 2018 Weston Gibler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomBallIndex : Int = 0
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5",]
    
    @IBOutlet weak var ballView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func destinyClicked(_ sender: UIButton) {
    
        randomBallIndex = Int(arc4random_uniform(5))
        
        print(randomBallIndex)
        
        ballView.image = UIImage(named: ballArray[randomBallIndex])
        
    }
    
}

