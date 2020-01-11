//
//  LabelBold.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

// MARK: - Label Bold

final class LabelBold: BaseLabel {
    
    override func awakeFromNib() {
        
        font = Font.bold.return(size: font.pointSize)
    }
}
