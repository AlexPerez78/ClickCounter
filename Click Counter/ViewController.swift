//
//  ViewController.swift
//  Click Counter
//
//  Created by Alex Perez on 6/23/16.
//  Copyright © 2016 Alex Perez. All rights reserved.
//

import UIKit

extension UIColor{
    static func getRandom() -> UIColor{
        
        let randomRed:CGFloat = CGFloat(drand48())
        
        let randomGreen:CGFloat = CGFloat(drand48())
        
        let randomBlue:CGFloat = CGFloat(drand48())
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
}

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!
    var label2: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //Label 2
        let label2 = UILabel()
        label2.frame = CGRectMake(50, 150, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        
        //AddButton
        let button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("+", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        /*
         Button needs a target in order to execute the incrementation to update the view, there the button addTarget
         to itself and also invoking the incrementCount
         */
        button.addTarget(self, action: #selector(ViewController.incrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
        //SubButton
        let decButton = UIButton()
        decButton.frame = CGRectMake(50, 250, 60, 60)
        decButton.setTitle("-", forState: .Normal)
        decButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decButton)
        
        decButton.addTarget(self, action: #selector(ViewController.decrementCount), forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func getRandomColor() -> UIColor{
        
        let randomRed:CGFloat = CGFloat()
        
        let randomGreen:CGFloat = CGFloat()
        
        let randomBlue:CGFloat = CGFloat()
        
        return UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
    func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.getRandom()
    }
    
    func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
         self.label2.text = "\(self.count)"
        self.view.backgroundColor = UIColor.getRandom()
    }
}

