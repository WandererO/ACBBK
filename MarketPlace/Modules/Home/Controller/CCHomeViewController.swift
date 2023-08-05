//
//  CCHomeViewController.swift
//  MarketPlace
//
//  Created by XXX on 6/8/22.
//

import UIKit
import RxSwift
import SafariServices
//import ZendeskSDK
//import ZendeskSDKMessaging


class CCHomeViewController: BaseHiddenNaviController {
    
    

}
extension CCHomeViewController{
    
    
    override func viewDidLayoutSubviews() {
           super.viewDidLayoutSubviews()
            
           
   }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = RGBCOLOR(r: 246, g: 247, b: 250)
        self.headerView.isHidden = true
        
        setUI()
    }
    
    
    
    func setUI(){
        
        let navView = MPHomeNavigationView()
        view.addSubview(navView)
        navView.snp.makeConstraints { make in
            make.top.left.right.equalToSuperview()
            make.height.equalTo(90)
        }
        
        let contentView = MPHomeContentView()
        view.addSubview(contentView)
        contentView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(navView.snp.bottom)
        }
        
        
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    
    
}
