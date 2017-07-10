//
//  TextInputCell.swift
//  KidWatch
//
//  Created by admin on 2017/6/24.
//  Copyright © 2017年 com. All rights reserved.
//

import UIKit

class TextInputCell: UITableViewCell {

    var iconImg:UIImageView?
    var textField:UITextField?

    override init(style: UITableViewCellStyle, reuseIdentifier: String?){
    
        super.init(style:style,reuseIdentifier:reuseIdentifier)
        
        self.setUpUI()
    }
   
    //FIXME:等待修复

    func setUpUI() {
        iconImg = UIImageView()
        self.contentView.addSubview(iconImg!)
        iconImg?.snp.makeConstraints({ (make) in
            make.height.width.equalTo(24)
            make.left.equalTo(12)
            make.centerY.equalTo(self.contentView)
            
        })
        
        textField = UITextField()
        textField?.font = UIFont.systemFont(ofSize: 14)
        self.contentView.addSubview(textField!)
        textField?.snp.makeConstraints({ (make) in
            make.height.equalTo(24)
            make.left.equalTo(iconImg!.snp.rightMargin).offset(12)
            make.right.equalTo(self.contentView).offset(-50)
            make.centerY.equalTo(self.contentView)
            
        })

    }
    
    func configerData(_ imgStr:String,_ placholderStr:String) {
        iconImg?.image = UIImage.init(named: imgStr);
        let placeholder = NSAttributedString(string: placholderStr, attributes: [NSForegroundColorAttributeName : UIColor.lightGray,NSFontAttributeName:UIFont.systemFont(ofSize: 14)])
        textField?.attributedPlaceholder = placeholder;
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
