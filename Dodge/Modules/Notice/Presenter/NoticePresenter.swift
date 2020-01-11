//
//  NoticePresenter.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit

final class NoticePresenter: NoticePresenterProtocol {
    
    var view: PresenterToViewProtocol?
    var interactor: PresenterToInteractorProtocol?
    var router: NoticeRouterProtocol?
    
}

// MARK: - Methods

extension NoticePresenter {
    
    func startFetchingNotice() {
        interactor?.fetchNotice()
    }
       
    func showMovieController(navigationController: UINavigationController) {
        router?.pushToMovieScreen(navigationConroller: navigationController)
    }
    
}

// MARK: - Interactor Implementation

extension NoticePresenter: InteractorToPresenterProtocol {
    
    func noticeFetchedSuccess(noticeModelArray: [NoticeModel]) {
        view?.showNotice(noticeArray: noticeModelArray)
    }
    
    func noticeFetchFailed() {
        view?.showError()
    }
    
}
