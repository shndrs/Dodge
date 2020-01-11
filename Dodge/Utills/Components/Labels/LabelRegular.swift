//
//  LabelRegular.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

// MARK: - Label Regular

final class LabelRegular: BaseLabel {
    
    override func awakeFromNib() {
        
        font = Font.regular.return(size: font.pointSize)
    }
}

