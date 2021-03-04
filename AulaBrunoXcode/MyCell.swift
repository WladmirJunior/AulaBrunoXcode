//
//  MyCell.swift
//  AulaBrunoXcode
//
//  Created by Wladmir Edmar Silva Junior on 04/03/21.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var clickIcon: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
