//
//  ViewController.swift
//  Eight-Ball
//
//  Created by Maksym Kolodiy on 06/09/2019.
//  Copyright © 2019 Maksym Kolodiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    var randomNumber : Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeBallImageAnswer()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeBallImageAnswer();
    }
    
    func changeBallImageAnswer(){
        randomNumber = Int(arc4random_uniform(5)) + 1
        
        ballImage.image = UIImage(named: "ball\(randomNumber)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeBallImageAnswer();
    }
    
}

