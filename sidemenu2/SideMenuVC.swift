//
//  SideMenuVC.swift
//  sidemenu2
//
//  Created by Mostafa on 10/25/19.
//  Copyright © 2019 pc. All rights reserved.
//

import UIKit

class SideMenuVC: UIViewController {

    var delegate: SideMenuDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func BackToHome(_ sender: Any) {
            self.delegate?.ShowHome()

    }
    

}



extension SideMenuVC : UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mycell", for: indexPath)
        cell.textLabel?.text = "Setting"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let story = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "settingVC")
        show(story, sender: nil)
            
        }
    }
    
    
    
}
