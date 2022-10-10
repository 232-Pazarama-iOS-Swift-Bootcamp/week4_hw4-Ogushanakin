//
//  RecentTableViewCell.swift
//  Flickr App
//
//  Created by AKIN on 10.10.2022.
//

import UIKit

class RecentTableViewCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
    @IBAction func likeButton(_ sender: Any) {
        
    }
    @IBAction func addListButton(_ sender: Any) {
        
    }
}
