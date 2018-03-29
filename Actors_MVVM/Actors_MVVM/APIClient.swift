//
//  APIClient.swift
//  Actors_MVVM
//
//  Created by Viren Patel on 3/28/18.
//  Copyright © 2018 Viren Patel. All rights reserved.
//

import Foundation
typealias completionHandler = ([Actor]?, Error?) -> ()
class APIClient: NSObject
{
    func fetchActorList(_ completion: @escaping completionHandler)
    {
        guard let url = URL(string: Contants().actorUrlSTR) else{
            print("There is some error while fetching a data")
            return
        }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error == nil
            {
                let decoder = JSONDecoder()
                do{
                    let actors = try decoder.decode(jsonData.self, from: data!)
                    completion(actors.actors,nil)
                }
                catch
                {
                    //  completion([],error)
                }
            }
            else
            {
                completion([],error)
            }
        }.resume()
    }
}
