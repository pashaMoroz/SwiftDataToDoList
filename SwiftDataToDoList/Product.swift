//
//  Product.swift
//  SwiftDataToDoList
//
//  Created by Moroz Pavlo on 2023-06-16.
//

import Foundation
// 1) Import SwiftData
import SwiftData

// 2) Mark your model like @Model
@Model
final class Product {
    var title: String
    var isBought: Bool
    var price: Int
    
    init(title: String = "" , isBought: Bool = false, price: Int = 0) {
        self.title = title
        self.isBought = isBought
        self.price = price
    }
}
