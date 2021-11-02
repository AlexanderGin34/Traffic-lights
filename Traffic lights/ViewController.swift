//
//  ViewController.swift
//  Traffic lights
//
//  Created by Aleksandr Gineyka on 02.11.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewRed: UIView!
    @IBOutlet weak var viewYellow: UIView!
    @IBOutlet weak var viewGreen: UIView!
    @IBOutlet weak var toggleButton: UIButton!
    
    @IBOutlet var viewCollection: [UIView]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        for viewItem in viewCollection {
            viewItem.layer.cornerRadius = 75
            viewItem.alpha = 0.3
        }
        
        toggleButton.layer.cornerRadius = 10
        
    }

    @IBAction func runTrafficLights() {
        if viewRed.alpha < 100 && viewYellow.alpha < 100 && viewGreen.alpha < 100 {
            viewRed.alpha = 100
        }else if viewRed.alpha == 100 {
            viewRed.alpha = 0.3
            viewYellow.alpha = 100
        }else if viewYellow.alpha == 100 {
            viewYellow.alpha = 0.3
            viewGreen.alpha = 100
        }else {
            viewGreen.alpha = 0.3
            viewRed.alpha = 100
        }
    }
    
}

