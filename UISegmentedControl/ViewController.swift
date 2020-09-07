//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by ivk on 03/09/2020.
//  Copyright © 2020 irr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentedAlert(_ sender: Any) {
        let segmentedControl : UISegmentedControl
        segmentedControl = sender as! UISegmentedControl
        
        switch (segmentedControl.selectedSegmentIndex){
        case 0:
            
            let alert = UIAlertController(title: "First Segment 0 Alert", message: ".cancel style is bolder than .defaul", preferredStyle: .alert)
            // .cancel style bolder then .defaul
            alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: { _ in
                
                NSLog("The \"OK\" alert occured.")
                
            }))
            
            self.present(alert, animated: true, completion: nil)
            
        case 1:
            
            let alert = UIAlertController(title: "Second Segment 1 Alert", message: ".defaul style is not bolder than .cancel", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                
                NSLog("The \"OK\" alert occured.")
                
            }))
            
            self.present(alert, animated: true, completion: nil)
            
        case 2:
            
            let alertController = UIAlertController(title: "Third Segment 2 Alert", message: ".destructive style is red\n.cancel style is bolder than .defaul and allways in the bottom\n", preferredStyle: .alert)
               
               // Create OK button
            let OKAction = UIAlertAction(title: "default style", style: .default) { (action:UIAlertAction!) in
                   
                   // Code in this block will trigger when OK button tapped.
                   print("Ok button tapped");
                   
            }
            alertController.addAction(OKAction)

            // Create Cancel button
            let cancelAction = UIAlertAction(title: "cancel style", style: .cancel) { (action:UIAlertAction!) in
               print("Cancel button tapped");
            }
            alertController.addAction(cancelAction)
            
            // Create resetAction button
            let destructiveAction = UIAlertAction(title: "destructive style", style: .destructive) { (action:UIAlertAction!) in
                print("destructiveAction button tapped");
            }
            alertController.addAction(destructiveAction)
            
               // Present Dialog message
            self.present(alertController, animated: true, completion:nil)
        default:
            print ("segmentedControl.selectedSegmentIndex = \(segmentedControl.selectedSegmentIndex) is not supported" )
        }
    }
    
}

