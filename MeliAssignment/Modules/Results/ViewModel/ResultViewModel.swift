//
//  ResultViewModel.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 30/06/21.
//

import Foundation

struct ResultViewModel {
    var id: String
    var title: String
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
}
