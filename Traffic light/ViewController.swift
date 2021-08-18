//
//  ViewController.swift
//  Traffic light
//
//  Created by Оксана Щукина on 18.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.view.backgroundColor = UIColor.black
        
        startButton.backgroundColor = UIColor.white
        startButton.setTitleColor(.black, for: .normal)
        startButton.layer.cornerRadius = 4
        
        redView.backgroundColor = UIColor.red
        orangeView.backgroundColor = UIColor.orange
        greenView.backgroundColor = UIColor.green
       
        redView.layer.cornerRadius = redView.frame.height/2
        orangeView.layer.cornerRadius = orangeView.frame.height/2
        greenView.layer.cornerRadius = greenView.frame.height/2
       
        redView.alpha = 0.3
        orangeView.alpha = 0.3
        greenView.alpha = 0.3
        
    }


    @IBAction func changeLightButton(_ sender: Any) {
        if redView.alpha != 1 && orangeView.alpha != 1 && greenView.alpha != 1 {
            redView.alpha = 1
            startButton.setTitle("Next", for: .normal)
        } else if redView.alpha == 1 {
            redView.alpha = 0.3
            orangeView.alpha = 1
        } else if orangeView.alpha == 1 {
            orangeView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
    
}

