//
//  BusinessCell.swift
//  Yelp
//
//  Created by Victor Zhang on 9/5/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var businessImageView: UIImageView!
    
    @IBOutlet weak var starsView: UIImageView!
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var streetLabel: UILabel!
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            starsView.setImageWithURL(business.ratingImageURL)
            categoryLabel.text = business.categories
            distanceLabel.text = business.distance
            reviewsLabel.text = "\(business.reviewCount!)"
            nameLabel.text = business.name
            streetLabel.text = business.address
            businessImageView.setImageWithURL(business.imageURL)
            //priceLabel.text = business.ca
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        businessImageView.layer.cornerRadius = 3
        businessImageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        //nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
