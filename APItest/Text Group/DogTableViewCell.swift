//
//  DogTableViewCell.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/9/30.
//

import UIKit

class DogTableViewCell: UITableViewCell {

    @IBOutlet weak var imageDogimageview: UIImageView!
    @IBOutlet weak var ggyyLable: UILabel!
    @IBOutlet weak var ageLable: UILabel!
    @IBOutlet weak var sexLable: UILabel!
    @IBOutlet weak var nameLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
