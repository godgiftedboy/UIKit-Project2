//
//  ViewController.swift
//  project2
//
//  Created by Waterflow Technology on 04/04/2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    var countries = [String]();
    var score = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        button1.layer.borderWidth = 1;
        button2.layer.borderWidth = 1;
        button3.layer.borderWidth = 1;
        
        //CA (Core Animation) layer - core component of iOS's rendering system.
        //Every UIView in iOS has an underlying CALayer that is responsible for rendering the view on screen.
        // CALayer is the drawing engine behind every UIView.
        // It handles graphics, animations, and effects like shadows and borders.
        // You rarely need to use CALayer directly unless you want advanced visuals or custom animations
        
        //borderColor belongs to CA layer so .cgColor converts the UI color to CG (Core Graphics) compatible.
        
        button1.layer.borderColor = UIColor.lightGray.cgColor;
        button2.layer.borderColor = UIColor.lightGray.cgColor;
        button3.layer.borderColor = UIColor.lightGray.cgColor;
        
        askQuestion();
    }
    
    func askQuestion(){
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }


}

