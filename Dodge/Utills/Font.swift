//
//  Font.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

enum Font: String {
    
    case bold = "AvenirNext-Bold"
    case medium = "AvenirNext-Medium"
    case regular = "AvenirNext-Regular"
    case light = "AvenirNext-UltraLigh"
    
    func `return`(size: CGFloat) -> UIFont {
        
        switch self {
        
            case .bold:
                return UIFont(name: Font.bold.rawValue, size: size)!
            case .medium:
                return UIFont(name: Font.medium.rawValue, size: size)!
            case .regular:
                return UIFont(name: Font.regular.rawValue, size: size)!
            case .light:
                return UIFont(name: Font.regular.rawValue, size: size)!
        }
    }
}
