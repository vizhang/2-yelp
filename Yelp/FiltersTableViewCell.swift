//
//  FiltersTableViewCell.swift
//  Yelp
//
//  Created by Victor Zhang on 9/6/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol FiltersCellDelegate {
    optional func filtersCell(filtersCell: FiltersTableViewCell, didChangeValue value:Bool)
}

class FiltersTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate: FiltersCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()

        onSwitch.addTarget(self, action: "valueChanged", forControlEvents: UIControlEvents.ValueChanged)
    
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func valueChanged() {
        println("switch is now: \(onSwitch.on)")
        delegate?.filtersCell?(self, didChangeValue: onSwitch.on)
    }

}
