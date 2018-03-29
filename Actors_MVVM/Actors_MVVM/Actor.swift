//
//  Actor.swift
//  Actors_MVVM
//
//  Created by Viren Patel on 3/28/18.
//  Copyright © 2018 Viren Patel. All rights reserved.
//

import Foundation

struct jsonData: Decodable
{
    var actors: [Actor]
}
struct Actor: Decodable
{
    var name: String?
    var description: String?
    var dob: String?
    var country: String?
    var height: String?
    var spouse: String?
    var children: String?
    var image: String?
}
