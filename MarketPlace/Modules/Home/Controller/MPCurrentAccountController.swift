//
//  MPCurrentAccountController.swift
//  MarketPlace
//
//  Created by mac on 2023/8/6.
//

import UIKit

class MPCurrentAccountController: BaseHiddenNaviController {

    @IBOutlet weak var cardView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Current account(s)".localString()
        self.view.backgroundColor = RGBCOLOR(r: 243, g: 246, b: 248)
        topViewRightBtn.setImage(UIImage(named: "image5"), for: .normal)
        topViewRightBtn.backgroundColor = RGBCOLOR(r: 240, g: 249, b: 255)
        topViewRightBtn.corner(cornerRadius: 16)
        
        cardView.isUserInteractionEnabled = true
        cardView.addTapForView().subscribe(onNext: {[weak self] _ in
            guard let self = self else{return}
            
            let vc = MPCurrentAccountInfoController()
            self.navigationController?.pushViewController(vc, animated: true)
            
        }).disposed(by: disposeBag)
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
