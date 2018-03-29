//
//  ViewModel.swift
//  Actors_MVVM
//
//  Created by Viren Patel on 3/28/18.
//  Copyright © 2018 Viren Patel. All rights reserved.
//

import Foundation
class ViewModel: NSObject
{
    var apiClient: APIClient!
    private var Actors: [Actor]?
    override init()
    {
        apiClient = APIClient()
    }
    func getActors(completion: @escaping () -> Void)
    {
        apiClient.fetchActorList { (actors, error) in
            DispatchQueue.main.sync {
                self.Actors = actors
                completion()
            }
        }
    }
    
    func numberOfRowsToDisplay() -> Int
    {
        return Actors?.count ?? 0
    }
    
    func ActornameToDisplay(for indexPath: IndexPath) -> String
    {
        return Actors![indexPath.row].name!
    }
    func CountryNameToDispaly(for indexPath: IndexPath) -> String
    {
        return Actors![indexPath.row].country!
    }
    
    func DiscriptionToDisplay(for indexPath: IndexPath) -> String
    {
        return Actors![indexPath.row].description!
    }
    
    func ImageURLToDisplay(for indexPath: IndexPath) -> String
    {
        return Actors![indexPath.row].image!
    }
}
