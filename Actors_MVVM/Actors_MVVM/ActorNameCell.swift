//
//  ActorNameCell.swift
//  Actors_MVVM
//
//  Created by Viren Patel on 3/28/18.
//  Copyright © 2018 Viren Patel. All rights reserved.
//

import UIKit

class ActorNameCell: UITableViewCell
{

    @IBOutlet weak var Actor_Detail_lbl: UILabel!
    @IBOutlet weak var Actor_country_lbl: UILabel!
    @IBOutlet weak var Actor_name_lbl: UILabel!
    @IBOutlet weak var Actor_Image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        Actor_Image.layer.cornerRadius = Actor_Image.frame.height / 2
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
