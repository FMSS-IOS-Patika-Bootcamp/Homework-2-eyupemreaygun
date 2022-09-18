//
//  TableViewCell.swift
//  homework-2-eyupemreaygun
//
//  Created by Eyüp Emre Aygün on 16.09.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var haberResim: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
