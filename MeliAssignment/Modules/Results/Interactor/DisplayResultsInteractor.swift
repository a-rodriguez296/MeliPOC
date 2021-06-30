//
//  DisplayResultsInteractor.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import Foundation

class DisplayResultsInteractor: DisplayResultsBusinessLogic {

    var presenter: DisplayResultsPresentationLogic?

    func fetchResults(with keyword: String) {

        let request = SearchItems(keyword: keyword)
        ApiClient.shared.execute(request: request) { (apiResult: APIResult<SearchItemsResponse>) in
            switch apiResult {
            case .success(_, let response):
                print(response)
            case .empty:
                break
            case .failure(_):
                break
            }
        }
    }

}
