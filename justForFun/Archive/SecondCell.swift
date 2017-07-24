//
//  SecondCell.swift
//  justForFun
//
//  Created by Hari Crayond Digital Reach Pvt Ltd on 20/05/2017.
//  Copyright © 2017 Crayond Digital Reach Pvt Ltd. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {

    @IBOutlet weak var RegBt: UIButton!
    @IBOutlet weak var WhatTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        let width = CGFloat(2.0)
        let border = CALayer()
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: WhatTextView.frame.size.height - width, width: WhatTextView.frame.size.width, height: 1)
        border.borderWidth = width
        WhatTextView.layer.addSublayer(border)
        WhatTextView.layer.masksToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
