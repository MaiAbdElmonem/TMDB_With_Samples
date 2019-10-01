//
//  ActorTableViewCell.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/29/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import UIKit
import SDWebImage

class ActorTableViewCell: UITableViewCell {

    @IBOutlet weak var actorName: UILabel!
    @IBOutlet weak var actorImage: UIImageView!
    
    let placeholderImage = UIImage(named: "apple")
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configureCell(person : Person)  {
        let baseimageURL=URL(string: "https://image.tmdb.org/t/p/w500/")
        let ImageUrl = baseimageURL?.appendingPathComponent(person.profilePath!)
        actorName.text = person.name
        actorImage.sd_setImage(with: ImageUrl, placeholderImage: placeholderImage)
    }
    
}
