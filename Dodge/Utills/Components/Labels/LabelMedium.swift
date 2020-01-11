//
//  LabelMedium.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

// MARK: - Label Medium

final class LabelMedium: BaseLabel {
    
    override func awakeFromNib() {
        
        font = Font.medium.return(size: font.pointSize)
    }
}

