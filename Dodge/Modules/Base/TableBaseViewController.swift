//
//  TableBaseViewController.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

class TableBaseViewController: UIViewController {
    
    var largeTitle: Bool = false {
        willSet(newVal) {
            navigationController?.navigationBar.prefersLargeTitles = newVal
        }
    }
    
    @IBOutlet public weak var tableView: UITableView! {
        didSet {
            tableSetup()
        }
    }
    
}

// MARK: - Methods

extension TableBaseViewController {
    @objc func tableSetup() {
        tableView.cleanFooterView()
    }
    
    func register(reuseIds: Array<String>) {
        
        for id in reuseIds {
            Register.in(component: tableView, id: id)
        }
    }
}

// MARK: - Life Cycle

extension TableBaseViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
