//
//  APIClient.swift
//  RoughTrails
//
//  Created by Rajsekhar on 28/06/18.
//  Copyright © 2018 Rajsekhar. All rights reserved.
//

import Foundation
typealias AudiobookJSON = [String : Any]
struct APIClient {
    
    static func getAudiobooksAPI(comletion : @escaping (AudiobookJSON?) -> Void){
        let url = URL(string:  "https://rss.itunes.apple.com/api/v1/in/apple-music/top-songs/all/100/explicit.json")
        let session = URLSession.shared
        
        guard let unwrappedURL = url else{print("Error unwrapping URL");return}
        
        let dataTask = session.dataTask(with: unwrappedURL){(data,response,error) in
            guard let unwrapped = data else {print("Error unwrapping data"); return}
            do{
                let responseJSON = try JSONSerialization.jsonObject(with: unwrapped, options: []) as?AudiobookJSON
                comletion(responseJSON)
            }catch{
                print("Could not get API data.\(error),\(error.localizedDescription)")
            }
        }
        
        dataTask.resume()
        
    }
}
