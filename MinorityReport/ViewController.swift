//
//  ViewController.swift
//  MinorityReport
//
//  Created by Ziyun Ma on 6/13/17.
//  Copyright © 2017 Ziyun Ma. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var futureLabel: UILabel!
    @IBOutlet weak var preCogsLabel: UILabel!

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func onDrag(_ sender: UIPanGestureRecognizer)
    {
        print("Drag")
        
        let point = sender.location(in: view)
        print(point)
        futureLabel.center = point
        
        
        if sender.state == .ended
        {
            print("End")
            UIView.animate(withDuration: 0.75, animations:
            {
                self.futureLabel.center = self.view.center
            })
        }
    }

  
}

