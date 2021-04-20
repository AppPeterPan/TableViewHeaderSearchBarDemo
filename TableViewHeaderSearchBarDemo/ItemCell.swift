//
//  ItemCell.swift
//  TableViewHeaderSearchBarDemo
//
//  Created by SHIH-YING PAN on 2021/4/20.
//

import UIKit
import Kingfisher

class ItemCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var itemImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(item: StoreItem) {
        nameLabel.text = item.trackName
        itemImageView.kf.setImage(with: item.artworkUrl100, placeholder: UIImage(systemName: "music.note"))
    }

}
