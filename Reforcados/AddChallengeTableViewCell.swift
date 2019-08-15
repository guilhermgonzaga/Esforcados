//
//  AddChallengeTableViewCell.swift
//  Esforcados
//
//  Created by student on 15/08/19.
//  Copyright © 2019 Hackatruck. All rights reserved.
//

import UIKit

class AddChallengeTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBOutlet weak var challengeNameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var dueDateLabel: UILabel!
    
    @IBOutlet weak var addChallengeButton: UIButton!
 
    
}
