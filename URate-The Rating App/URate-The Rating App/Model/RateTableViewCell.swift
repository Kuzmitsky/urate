//
//  RateTableViewCell.swift
//  URate-The Rating App
//
//  Created by William Ching on 2019-04-19.
//  Copyright © 2019 Sahil Gogna. All rights reserved.
//

import UIKit
import Cosmos          // DenisK for add Stars
import TinyConstraints // DenisK for add Stars

class RateTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var commentLabel: UILabel!
    
    // DenisK for add Stars
    lazy var cosmosView: CosmosView = {
        var view = CosmosView()
        view.settings.updateOnTouch = false
        view.settings.totalStars = 5
        view.settings.starSize = 27
        view.settings.starMargin = 3.3
        view.settings.fillMode = .precise //.full
        view.settings.textColor = .red
        view.settings.textMargin = 10
        return view
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        super.addSubview(cosmosView)        // DenisK for add Stars
        cosmosView.rightToSuperview()       // DenisK for add Stars
    }

}
