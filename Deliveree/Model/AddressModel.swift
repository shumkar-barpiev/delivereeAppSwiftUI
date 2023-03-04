//
//  AddressModel.swift
//  Deliveree
//
//  Created by Shumkar on 3/3/23.
//

import Foundation

struct AddressModel: Identifiable{
    let id: Int
    let addressName: String
    let addressExpression: String
    let addressIconImage: String
    let editButtonStatus: Bool
}
