//
//  Register.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

final class Register: NSObject {
    
    static func `in`<T>(component: T, id: String) {
        
        let nib = UINib(nibName: id, bundle: nil)
        
        switch component {
            
            case is UITableView:
                
                guard let cell = component as? UITableView else { return }
                cell.register(nib, forCellReuseIdentifier: id)
            
            case is UICollectionView:
                
                guard let cell = component as? UICollectionView else { return }
                cell.register(nib, forCellWithReuseIdentifier: id)
            
            default:
                break;
        }
    }
}

