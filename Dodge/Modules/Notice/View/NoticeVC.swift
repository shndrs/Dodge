//
//  NoticeVC.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

final class NoticeVC: TableBaseViewController {

    var presenter: NoticePresenterProtocol?
    
    private lazy var items: [NoticeModel] = {
        return [NoticeModel]()
    }()
    
}

// MARK: - Life Cycle

extension NoticeVC {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        largeTitle = true
        title = Strings.notice.rawValue
        HUD.default.show()
        presenter?.startFetchingNotice()
    }
}

// MARK: - View Implementation

extension NoticeVC: PresenterToViewProtocol {
    
    func showNotice(noticeArray: Array<NoticeModel>) {
        self.items = noticeArray
        tableView.reloadData()
        HUD.default.dismiss()
    }
    
    func showError() {
        HUD.default.dismiss()
        Alert.show(title: Strings.error.rawValue,
                   message: Strings.errorFetchingData.rawValue)
    }
    
}

// MARK: - Methods

extension NoticeVC {
    override func tableSetup() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 80
        register(reuseIds: RIDs.noticeVC)
    }
}

// MARK: - TableView Implementation

extension NoticeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView
            .dequeueReusableCell(withIdentifier: NoticeCell.reuseIdentifier) as? NoticeCell
        cell?.fill(cell: items[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        
        guard let nav = navigationController else { return }
        presenter?.showMovieController(navigationController: nav)
    }
    
}
