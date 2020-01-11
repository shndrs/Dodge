//
//  NoticeModel.swift
//  Dodge
//
//  Created by NP2 on 1/11/20.
//  Copyright © 2020 shndrs. All rights reserved.
//

import Foundation
import ObjectMapper

final class NoticeModel: Mappable {
    
    internal var id: String?
    internal var title: String?
    internal var brief: String?
    internal var filesource: String?
    
    required init?(map:Map) {
        mapping(map: map)
    }
    
    func mapping(map:Map) {
        id <- map["id"]
        title <- map["title"]
        brief <- map["brief"]
        filesource <- map["filesource"]
    }
}
