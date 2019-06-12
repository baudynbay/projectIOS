//
//  TableViewCell.swift
//  FunWithFlags
//
//  Created by Baudynbay Aidana on 6/7/19.
//  Copyright © 2019 Victor. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Score: UILabel!
    @IBOutlet weak var Username: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setScoreBoardCell(username: String, score: String) {
        Score.text = score
        Username.text = username
    }

}
