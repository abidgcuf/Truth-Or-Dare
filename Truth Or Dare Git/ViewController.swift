//
//  ViewController.swift
//  Truth Or Dare
//
//  Created by Abid Ali on 2/16/17.
//  Copyright © 2017 ITPickle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var questionImageView: UIImageView!
    
    var dareNumber = 0
    var truthNumber = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func dareDidTap(_ sender: Any) {
        
        if dareNumber == 3{
            
            dareNumber = 1
            
        }else {
            
            dareNumber = dareNumber + 1
            
        }
        
        let nextImageName = "dare\(dareNumber)"
        
        print(nextImageName)
        
        questionImageView.image = UIImage(named: nextImageName)
        
        
        
    }
    
    
    @IBAction func truthDidTap(_ sender: Any) {
        
        if truthNumber == 3{
            
            truthNumber = 1
            
        }else {
            
            truthNumber = truthNumber + 1
        }
        
        let nextImageName = "truth\(truthNumber)"
        print(nextImageName)
        questionImageView.image = UIImage(named: nextImageName)

    }


}

