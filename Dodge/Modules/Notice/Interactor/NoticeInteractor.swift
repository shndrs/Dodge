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
            
            if(response.response?.statusCode == 200) {
                
                if let json = response.result.value as AnyObject? {
                    let arrayResponse = json["movie_list"] as! NSArray
                    let arrayObject = Mapper<NoticeModel>().mapArray(JSONArray: arrayResponse as! [[String : Any]]);
                    self?.presenter?.noticeFetchedSuccess(noticeModelArray: arrayObject)
                }
            } else {
                self?.presenter?.noticeFetchFailed()
            }
        }
    }
    
}
