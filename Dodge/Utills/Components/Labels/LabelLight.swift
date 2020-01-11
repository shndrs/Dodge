//
//  LabelLight.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

// MARK: - Label Light

final class LabelLight: BaseLabel {
    
    override func awakeFromNib() {
        
        font = Font.regular.return(size: font.pointSize)
    }
}

