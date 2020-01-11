//
//  NoticeCell.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

final class NoticeCell: UITableViewCell, ReusableView {

    @IBOutlet private weak var idLabel: LabelBold!
    @IBOutlet private weak var titleLabel: LabelBold!
    @IBOutlet private weak var briefLabel: LabelRegular!
    @IBOutlet private weak var fileSourceLabel: LabelLight!
    
}

// MARK: - Methods

extension NoticeCell {
    public func fill(cell by: NoticeModel) {
        idLabel.text = by.id
        titleLabel.text = by.title
        briefLabel.text = by.brief
        fileSourceLabel.text = by.filesource
    }
}
