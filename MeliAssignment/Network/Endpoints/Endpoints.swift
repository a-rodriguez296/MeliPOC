//
//  Endpoints.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 28/06/21.
//

import Foundation

enum Endpoints {
    case searchItems


    var url: String {
        switch self {
        case .searchItems:
            return "search"
        }
    }
}
