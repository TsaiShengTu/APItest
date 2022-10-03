//
//  SongTableViewCell.swift
//  APItest
//
//  Created by Sheng-Yu on 2022/9/30.
//

import UIKit

class SongTableViewCell: UITableViewCell {

    @IBOutlet weak var lyricText: UILabel!
    @IBOutlet weak var lyricTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
