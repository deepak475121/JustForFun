//
//  TagCell.swift
//  justForFun
//
//  Created by Hari Crayond Digital Reach Pvt Ltd on 20/05/2017.
//  Copyright © 2017 Crayond Digital Reach Pvt Ltd. All rights reserved.
//

import UIKit

class TagCell: UITableViewCell,TagListViewDelegate {

    @IBOutlet weak var TagView: TagListView!
    override func awakeFromNib() {
        super.awakeFromNib()
        TagView.delegate = self
        TagView.addTags(["Test","Test","Test","Test","Test","Test","Test","Test","Test","Test","Test","Test"])
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: TagListViewDelegate
    func tagPressed(_ title: String, tagView: TagView, sender: TagListView) {
        print("Tag pressed: \(title), \(sender)")
        tagView.isSelected = !tagView.isSelected
    }
    
    func tagRemoveButtonPressed(_ title: String, tagView: TagView, sender: TagListView) {
        print("Tag Remove pressed: \(title), \(sender)")
        sender.removeTagView(tagView)
    }
    
}
