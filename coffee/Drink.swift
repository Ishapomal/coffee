//
//  Drink.swift
//  coffee
//
//  Created by Isha Pomal on 6/10/20.
//  Copyright © 2020 Isha Pomal. All rights reserved.
//

// data model 

import SwiftUI

struct Drink: Hashable, Codable, Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
    
}
