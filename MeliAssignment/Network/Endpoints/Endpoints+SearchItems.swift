//
//  Endpoints+Search.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 28/06/21.
//

import Foundation


struct SearchItems: EndpointProtocol {
    var keyword: String

    func getURLComponents() -> URLComponents {
        var urlComponents = Constants.baseURLComponents
        urlComponents.path.append(Endpoints.searchItems.url)
        var baseItems = [URLQueryItem]()
        baseItems.append(contentsOf: [URLQueryItem(name: "q", value: keyword)])
        urlComponents.queryItems = baseItems
        return urlComponents
    }
}
