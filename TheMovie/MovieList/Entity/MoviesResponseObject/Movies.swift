//
//  MovieListObj.swift
//  TheMovie
//
//  Created by Macbook Pro on 14/06/2021.
//

import Foundation
import UIKit
import ObjectMapper
import RealmSwift

class Movies: Mappable {

    var page: Int = 0
    var results = [Movie]()
    var total_pages: Int = 0
    var total_results: Int = 0
    
    required init?(map: Map)
    {
        
    }
    
    required init?()
    {
        
    }
    func mapping(map: Map)
    {
        page <- map["page"]
        results <- map["results"]
        total_pages <- map["total_pages"]
        total_results <- map["total_results"]
        
    }
    
    func changeIsUpcoming(isUpComing:Bool) -> [Movie]{
        var tempArray : [Movie] = []
            for each in results{
                each.isUpcoming = isUpComing
                tempArray.append(each)
            }
        return tempArray
    }

    func changeIsPopular(isPopular:Bool) -> [Movie]{
        var tempArray : [Movie] = []
            for each in results{
                each.isPopular = isPopular
                tempArray.append(each)
            }
        return tempArray
    }
}

