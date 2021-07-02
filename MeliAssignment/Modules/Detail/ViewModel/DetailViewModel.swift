//
//  DetailViewModel.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import Foundation

struct DetailViewModel {
    var id: String
    var title: String
    var seller: String
    var price: Double
    var stPrice: String {
        get {
            return "$\(price)"
        }
    }
    var thumbnail: String
    var thumbnailURL: URL? {
        get {
            return URL(string: thumbnail)
        }
    }
    var shipping: Bool
    var quantity: Int
}
