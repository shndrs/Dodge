//
//  NoticeProtocols.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import Foundation
import UIKit

protocol NoticePresenterProtocol: class {
    
    var view: PresenterToViewProtocol? { get set }
    var interactor: PresenterToInteractorProtocol? { get set }
    var router: NoticeRouterProtocol? { get set }
    func startFetchingNotice()
    func showMovieController(navigationController: UINavigationController)
}

protocol PresenterToViewProtocol: class {
    
    func showNotice(noticeArray: [NoticeModel])
    func showError()
}

protocol NoticeRouterProtocol: class {
    
    static func createModule() -> NoticeVC
    func pushToMovieScreen(navigationConroller: UINavigationController)
}

protocol PresenterToInteractorProtocol: class {
    
    var presenter:InteractorToPresenterProtocol? { get set }
    func fetchNotice()
}

protocol InteractorToPresenterProtocol: class {
    
    func noticeFetchedSuccess(noticeModelArray: [NoticeModel])
    func noticeFetchFailed()
}
