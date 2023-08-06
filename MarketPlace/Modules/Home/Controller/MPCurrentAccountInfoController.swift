//
//  MPCurrentAccountInfoController.swift
//  MarketPlace
//
//  Created by mac on 2023/8/6.
//

import UIKit

class MPCurrentAccountInfoController: BaseHiddenNaviController {

    @IBOutlet weak var recentView: UIView!
    
    lazy var tableView : BaseTableView = {
        
        let table = BaseTableView(frame: CGRect.zero, style: .plain)
        table.showsVerticalScrollIndicator = false
        table.backgroundColor = .clear
        table.dataSource = self
        table.delegate = self
        table.separatorStyle = .none
        table.register(UINib(nibName: "MPTranstionCell", bundle: nil), forCellReuseIdentifier: "MPTranstionCell")
        table.autoresizingMask  = .flexibleHeight
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Current account(s)".localString()
        self.view.backgroundColor = RGBCOLOR(r: 246, g: 247, b: 250)
        // Do any additional setup after loading the view.
        
        view.addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.left.right.bottom.equalToSuperview()
            make.top.equalTo(recentView.snp.bottom)
        }
    }

}

extension MPCurrentAccountInfoController : UITableViewDataSource , UITableViewDelegate{

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 103
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MPTranstionCell", for: indexPath) as! MPTranstionCell
//        cell.corner(cornerRadius: 6)
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionV = UIView()
        sectionV.backgroundColor = RGBCOLOR(r: 246, g: 247, b: 250)
        
        let timeLab = UILabel()
        timeLab.text  = "25/07/2023"
        timeLab.textColor = kBlackTextColor
        timeLab.font = FONT_M(size: 16)
        sectionV.addSubview(timeLab)
        timeLab.snp.makeConstraints { make in
            make.left.equalTo(15)
            make.centerY.equalToSuperview()
        }
        
        return sectionV
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        

    }
    

}
