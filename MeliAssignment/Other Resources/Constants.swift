//
//  Constants.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 28/06/21.
//

import Foundation

import Foundation

enum Constants {

    static let baseURL: URL = URL(string: "https://api.mercadolibre.com/sites/MLA/")!
    static var baseURLComponents: URLComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)!
}
