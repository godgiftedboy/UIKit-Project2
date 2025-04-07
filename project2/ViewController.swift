//
//  ViewController.swift
//  project2
//
//  Created by Waterflow Technology on 04/04/2025.
//

import UIKit

class ViewController: UIViewController {
    // @IBOutlet is a way of connecting code to storyboard layouts
    @IBOutlet var button1: UIButton!
    
    @IBOutlet var button2: UIButton!
    
    @IBOutlet var button3: UIButton!
    
    var countries = [String]();
    var score = 0;
    
    var correctAnswer = 0;
    
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
        //removed unwanted padding from buttons
        button1.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        button2.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        button3.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
        
        
        // askQuestion(action: nil);
        askQuestion();
    }
    
    func askQuestion(action: UIAlertAction! = nil){
        countries.shuffle();
        correctAnswer = Int.random(in: 0...2);
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = countries[correctAnswer].uppercased();
    }
    
    //@IBAction is a way of making storyboard layouts trigger code.
    @IBAction func button1Tapped(_ sender: UIButton) {
        var title: String

        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Wrong"
            score -= 1
        }
        
        let ac  = UIAlertController(title: title, message: "Your Score: \(score)", preferredStyle: .alert)
        
        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion));
        present(ac, animated: true);
    }
    
}

