//
//  LastCell.swift
//  justForFun
//
//  Created by Hari Crayond Digital Reach Pvt Ltd on 22/05/2017.
//  Copyright © 2017 Crayond Digital Reach Pvt Ltd. All rights reserved.
//

import UIKit

class LastCell: UITableViewCell {

    @IBOutlet weak var lowBt: UIButton!
    @IBOutlet weak var midBt: UIButton!
    @IBOutlet weak var highBt: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        lowBt.layer.cornerRadius = lowBt.frame.height/2
        lowBt.layer.borderWidth = 1
        lowBt.layer.borderColor = UIColor.black.cgColor
        
        midBt.layer.cornerRadius = midBt.frame.height/2
        midBt.layer.borderWidth = 1
        midBt.layer.borderColor = UIColor.black.cgColor
        
        highBt.layer.cornerRadius = highBt.frame.height/2
        highBt.layer.borderWidth = 1
        highBt.layer.borderColor = UIColor.black.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
