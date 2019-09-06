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
        self.ballImage.alpha = 0.0
        // Do any additional setup after loading the view.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeBallImageAnswer();
    }
    
    func changeBallImageAnswer(){
        randomNumber = Int(arc4random_uniform(5)) + 1
        UIView.animate(withDuration: 1.0, delay: 0.0, options: .curveEaseOut, animations: {
            self.ballImage.alpha = 0.0
        }, completion: { (finished: Bool) in
            self.ballImage.image = UIImage(named: "ball\(self.randomNumber)")
            UIView.animate(withDuration: 1.0, delay: 0.5, options: .curveEaseOut, animations: {
                self.ballImage.alpha = 1.0
            }, completion: nil)
        })
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        changeBallImageAnswer();
    }
    
}

