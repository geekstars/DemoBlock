//
//  TableViewCell.swift
//  DemoBlock
//
//  Created by Hoàng Minh Thành on 9/22/16.
//  Copyright © 2016 Hoàng Minh Thành. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var anh: UIImageView!
    @IBOutlet weak var ten: UILabel!
    @IBOutlet weak var vitri: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
