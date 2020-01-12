//
//  CustomHUD.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import EZProgressHUD

final class HUD: NSObject {

    public static let `default` = HUD()

    private lazy var hud: EZProgress = {

        let options = EZProgressOptions()
        let hud = EZProgressHUD.setProgress(with: options)
        return hud
    }()

    private override init() {}

    func show() {
        hud.show()
    }

    func dismiss() {
        hud.dismiss(completion: nil)
    }

}
