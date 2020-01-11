//
//  NoticeInteractor.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import Alamofire
import ObjectMapper
import AlamofireObjectMapper

final class NoticeInteractor: PresenterToInteractorProtocol {
    
    var presenter: InteractorToPresenterProtocol?
    
}

// MARK: - Methods

extension NoticeInteractor {
    
    func fetchNotice() {   
        
        Alamofire.request(Routes.movieList).responseJSON { [weak self] response in
            
            guard self != nil else { return }
            self?.handel(response: response)
        }
    }
    
    private func handel(response: DataResponse<Any>) {
        
        switch response.response?.statusCode {
        case 200:
            guard let json = response.result.value as AnyObject? else {
                self.presenter?.noticeFetchFailed(); return
            }
            let arrayResponse = json[Strings.movieList.rawValue] as! NSArray
            let arrayObject = Mapper<NoticeModel>()
                .mapArray(JSONArray: arrayResponse as! [[String : Any]]);
            self.presenter?.noticeFetchedSuccess(noticeModelArray: arrayObject)
        default:
            self.presenter?.noticeFetchFailed()
        }
    }
    
}
