//
//  MPLoginController.swift
//  MarketPlace
//
//  Created by mac on 2023/8/4.
//

import UIKit

class MPLoginController: BaseHiddenNaviController {

    @IBOutlet weak var accountField: UITextField!
    @IBOutlet weak var psswdField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.headerView.isHidden = true
        // Do any additional setup after loading the view.
    }

    @IBAction func loginClick(_ sender: Any) {
        
        NotificationCenter.default.post(name: loginSuccessNotification, object: self)
    }
    
    @IBAction func langueClick(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
