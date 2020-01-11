//
//  NoticeRouter.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import UIKit
    
final class NoticeRouter: NoticeRouterProtocol {
    
    static var mainstoryboard: UIStoryboard {
        return UIStoryboard(name:"Main", bundle: Bundle.main)
    }
    
    static func createModule() -> NoticeVC {
        
        let view = mainstoryboard
            .instantiateViewController(withIdentifier: Strings.noticeVC.rawValue) as! NoticeVC
        
        let presenter: NoticePresenterProtocol & InteractorToPresenterProtocol = NoticePresenter()
        let interactor: PresenterToInteractorProtocol = NoticeInteractor()
        let router: NoticeRouterProtocol = NoticeRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
    
    func pushToMovieScreen(navigationConroller: UINavigationController) {
        
    }
    
}
