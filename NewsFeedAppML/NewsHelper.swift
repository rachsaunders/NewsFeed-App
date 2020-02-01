//
//  NewsHelper.swift
//  NewsFeedAppML
//
//  Created by Rachel Saunders on 01/02/2020.
//  Copyright © 2020 Rachel Saunders. All rights reserved.
//

import Foundation
import Alamofire

class NewsHelper {
    
    func getArticles() {
        
        Alamofire.request("https://newsapi.org/v2/top-headlines?country=gb&apiKey=79a072c27ce147868936661a703d2ec6").responseJSON { (response) in
            print(response)
        }
    }
    
}
