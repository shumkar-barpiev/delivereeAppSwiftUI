//
//  FoodModel.swift
//  Deliveree
//
//  Created by Shumkar on 3/3/23.
//

import Foundation

struct FoodModel: Identifiable{
    let id: Int
    let foodName: String
    let description: String
    let deliveryStatus: String
    let stars: Double
    let price: Double
    let deliveryTime: String
    let foodImageName: String
}
