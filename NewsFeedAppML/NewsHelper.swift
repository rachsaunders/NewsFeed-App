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
            
            if let json = response.result.value as? [String:Any] {
                if let jsonArticles = json["articles"] as? [[String:Any]] {
                    var articles = [Article]()
                    for jsonArticle in jsonArticles {
                        guard let title = jsonArticle["title"] as? String,
                        let urlToImage = jsonArticle["urlToImage"] as? String,
                        let url = jsonArticle["url"] as? String,
                        let desription = jsonArticle["description"] as? String
                            else {
                                continue
                        }
                        let article = Article()
                        article.title = title
                        article.urlToImage = urlToImage
                        article.url = url
                        article.description = desription
                        articles.append(article)
                        
                    }
                }
            }
        }
    }
    
}

// these is from the apikey aka the json object
class Article {
    var title = ""
    var urlToImage = ""
    var url = ""
    var description = ""
    var category = ""
}
