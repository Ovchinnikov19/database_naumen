//
//  ComputersListViewCell.swift
//  ComputerDatabaseTest
//
//  Created by Eduard Ovchinnikov on 16.06.2018.
//  Copyright © 2018 Эдуард Овчинников. All rights reserved.
//

import UIKit

class ComputersListViewCell: UITableViewCell {
    
    @IBOutlet weak var computerNameLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    
    @IBOutlet weak var stackCompanyLabel: UIStackView!
    
    func configure(with computer: Computer){
        self.computerNameLabel.text = computer.name
        if computer.company != nil {
            self.companyNameLabel.text = computer.company?.name
        } else {
            stackCompanyLabel.isHidden = true
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
