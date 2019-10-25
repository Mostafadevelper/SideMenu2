//
//  HomeVC.swift
//  sidemenu2
//
//  Created by Mostafa on 10/24/19.
//  Copyright © 2019 pc. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
   //   (3)
    var delegate: SideMenuDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func GoToSideMenu(_ sender: Any) {
        //    (4)
        delegate?.ShowSideMenu()
    }
    
}
