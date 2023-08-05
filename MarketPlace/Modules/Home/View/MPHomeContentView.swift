//
//  MPHomeContentView.swift
//  MarketPlace
//
//  Created by mac on 2023/8/4.
//

import UIKit

class MPHomeContentView: BaseView {
    
    let scrollView = UIScrollView()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        scrollView.backgroundColor =  RGBCOLOR(r: 246, g: 247, b: 250)
        self.addSubview(scrollView)
        scrollView.snp.makeConstraints { make in
            make.left.top.bottom.equalToSuperview()
            make.width.equalTo(SCREEN_WIDTH)
        }
        
        let balanceV = MPHomeAvailableView()
        scrollView.addSubview(balanceV)
        balanceV.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(15)
            make.width.equalTo(SCREEN_WIDTH - 180)
            make.height.equalTo(70)
        }
        
        let rewardsV = MPHomeRewardsView()
        scrollView.addSubview(rewardsV)
        rewardsV.snp.makeConstraints { make in
            make.right.equalTo(-15)
            make.top.equalTo(15)
            make.left.equalTo(balanceV.snp.right).offset(10)
            make.height.equalTo(70)
        }
        
        let infoImage = UIImageView()
        infoImage.image = UIImage(named: "home_info")
        infoImage.corner(cornerRadius: 10)
        scrollView.addSubview(infoImage)
        infoImage.snp.makeConstraints { make in
            make.left.equalTo(20)
            make.top.equalTo(balanceV.snp.bottom).offset(30)
            make.right.equalTo(-40)
            make.width.equalTo(SCREEN_WIDTH - 60)
            make.height.equalTo(150)
        }
        
        let servicesLab = UILabel()
        servicesLab.text = "Bank services".localString()
        servicesLab.textColor = kBlack3TextColor
        servicesLab.font = FONT_R(size: 16)
        scrollView.addSubview(servicesLab)
        servicesLab.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(infoImage.snp.bottom).offset(50)
        }
        
        let overViewBtn = ZQButton()
        overViewBtn.setTitle("Overview".localString(), for: .normal)
        overViewBtn.setTitleColor(kMainBlueColor, for: .normal)
        overViewBtn.titleLabel?.font = FONT_R(size: 16)
        scrollView.addSubview(overViewBtn)
        overViewBtn.snp.makeConstraints { make in
            make.right.equalTo(-15)
            make.top.equalTo(infoImage.snp.bottom).offset(50)
        }
        
        let serviceV = MPHomeServicesView()
        scrollView.addSubview(serviceV)
        serviceV.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.right.equalTo(-15)
            make.top.equalTo(overViewBtn.snp.bottom).offset(10)
            make.height.equalTo(100)
        }
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MPHomeAvailableView : BaseView {
    
    lazy var eyeBtn : ZQButton = {
        let btn = ZQButton()
        btn.setImage(UIImage(named: "eye-close"), for: .normal)
        return btn
    }()
    
    lazy var amountLab : UILabel = {
        let lab = UILabel()
        lab.text = "9898 VND"
        lab.textColor = RGBCOLOR(r: 33, g: 111, b: 241)
        lab.font = FONT_SB(size: 16)
        return lab
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = RGBCOLOR(r: 233, g: 240, b: 249)
        self.corner(cornerRadius: 8)
        
        self.addSubview(eyeBtn)
        eyeBtn.snp.makeConstraints { make in
            make.left.equalTo(5)
            make.top.equalTo(10)
            make.width.equalTo(35)
        }
        
        let textLab = UILabel()
        textLab.text = "Available balance".localString()
        textLab.textColor = kBlack3TextColor
        textLab.font = FONT_R(size: 16)
        self.addSubview(textLab)
        textLab.snp.makeConstraints { make in
            make.left.equalTo(eyeBtn.snp.right).offset(5)
            make.top.equalTo(10)
            make.height.equalTo(20)
        }
        
        self.addSubview(amountLab)
        amountLab.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(textLab.snp.bottom).offset(10)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MPHomeRewardsView : UIButton  {
    
    lazy var amountLab : UILabel = {
        let lab = UILabel()
        lab.text = "500 point"
        lab.textColor = RGBCOLOR(r: 33, g: 111, b: 241)
        lab.font = FONT_SB(size: 16)
        return lab
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = RGBCOLOR(r: 233, g: 240, b: 249)
        self.corner(cornerRadius: 8)
        
        let labs = UILabel()
        labs.text = "ACB Rewards".localString()
        labs.textColor = kBlack3TextColor
        labs.font = FONT_R(size: 16)
        self.addSubview(labs)
        labs.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(10)
            make.height.equalTo(20)
        }
        
        let rightImag = UIImageView()
        rightImag.image = UIImage(named: "ic_next")
        self.addSubview(rightImag)
        rightImag.snp.makeConstraints { make in
            make.left.equalTo(labs.snp.right).offset(5)
            make.centerY.equalTo(labs.snp.centerY)
            make.width.height.equalTo(14)
        }
        
        self.addSubview(amountLab)
        amountLab.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.top.equalTo(labs.snp.bottom).offset(10)
        }
        
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class MPHomeServicesView : BaseView {
    
    
    var buttonS:[MPButtons] = []
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.corner(cornerRadius: 10)
        
        let titleAry = ["Accounts","Savings","Loans", "Cards"]
        let imgAry = ["Bank","Saving","Loan","Card"]
        var buttonS:[MPButtons] = []
        var i = 0
        for title in titleAry {
            let btn = MPButtons()
            btn.tag = i
            buttonS.append(btn)
            btn.title = title.localString()
            btn.imageWidth = 30
            btn.imgStr = imgAry[i]
            btn.rx.tap.subscribe(onNext: { [weak self] in
                guard let self = self else {return}
                let tag = btn.tag
//                self.selectBtnBlock?(tag)
            }).disposed(by: self.disposeBag)
            i += 1
            self.addSubview(btn)
        }
        buttonS.snp.distributeViewsAlong(axisType:.horizontal, fixedItemLength: 80 , leadSpacing: 15 , tailSpacing: 15)
        buttonS.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.height.equalTo(60)
        }
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class MPButtons:UIButton {
    
    var title:String? {
        didSet {
            titleLab.text = title?.localString()
        }
    }
    var imgStr : String? {
        didSet {
            btnImg.image = UIImage(named: imgStr ?? "")
        }
    }
    
    var imageWidth : CGFloat = 0 { didSet{ setUI()}}
    
    lazy var btnImg : UIImageView = {
        let img = UIImageView()
        return img
    }()
    
    lazy var titleLab : UILabel = {
        let lab = UILabel()
        lab.textColor = kBlack3TextColor
        lab.font = FONT_R(size: 14)
        lab.textAlignment = .center
        return lab
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
//        setUI()
    }
    
    func setUI() {
        self.addSubview(btnImg)
        btnImg.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.width.height.equalTo(self.imageWidth)
            make.centerX.equalToSuperview()
        }
        self.addSubview(titleLab)
        titleLab.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.top.equalTo(btnImg.snp.bottom).offset(10)
            make.height.equalTo(17)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


