//
//  ShinTableViewCell.swift
//  CrayonShin
//
//  Created by CHUN-CHIEH LU on 2022/9/24.
//

import UIKit

class ShinTableViewCell: UITableViewCell {

    @IBOutlet weak var shinImageView: UIImageView!
    @IBOutlet weak var shinLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
