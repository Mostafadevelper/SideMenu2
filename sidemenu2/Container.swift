//
//  ViewController.swift
//  sidemenu2
//
//  Created by Mostafa on 10/24/19.
//  Copyright © 2019 pc. All rights reserved.
//

import UIKit

                                        // (1)

class Container: UIViewController  , SideMenuDelegate {
    
    func ShowHome() {
        
        UIView.animate(withDuration: 0.5) {
            
            self.sideMenuConstraints.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    @IBOutlet weak var ContinerView1: UIView!
    
 
    
           // (2)
    
    func ShowSideMenu() {
        
        UIView.animate(withDuration: 0.5) {
            self.sideMenuConstraints.constant = -1 * ( self.view.bounds.width * 0.8 )
            self.view.layoutIfNeeded()
        }
        
        
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoHome" {
            let des = segue.destination as! HomeVC
            des.delegate = self
        }
        else if segue.identifier == "goToSidemenu" {
            let des2 = segue.destination as! SideMenuVC
            des2.delegate =  self
        }
    }
    
    
    @IBOutlet weak var sideMenuConstraints: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
     //   home?.delegate = self
    }

    
    
    

}

