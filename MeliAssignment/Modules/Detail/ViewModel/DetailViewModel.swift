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
    var stShipping: String {
        get {
            return shipping ? "Envío gratuito": "El costo no incluye el envío"
        }
    }
    var quantity: Int
    var stQuantity: String {
        get {
            return "\(quantity)"
        }
    }
}
