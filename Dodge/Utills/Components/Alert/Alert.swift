//
//  Alert.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

final class Alert: NSObject {
    
    static func show(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message,
                                      preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: Strings.ok.rawValue,
                                      style: UIAlertAction.Style.default,
                                      handler: nil))
        
        UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
    }
    
}
