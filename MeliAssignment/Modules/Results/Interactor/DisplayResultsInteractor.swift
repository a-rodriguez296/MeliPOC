//
//  DisplayResultsInteractor.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import Foundation

class DisplayResultsInteractor: DisplayResultsBusinessLogic {

    var presenter: DisplayResultsPresentationLogic?
    var selectedItem: ResultDAO?
    var results: [ResultDAO]?

    func fetchResults(with keyword: String) {

        let request = SearchItems(keyword: keyword)
        ApiClient.shared.execute(request: request) {[weak self] (apiResult: APIResult<SearchItemsResponse>) in
            switch apiResult {
            case .success(_, let response):
                if let results = response.results {
                    let array = results.map { element -> ResultDAO in
                        return ResultDAO(id: element.id ?? "",
                                         title: element.title ?? "",
                                         seller: element.seller?.eShop?.nickName ?? "",
                                         price: element.price ?? 0.0,
                                         thumbnail: element.thumbnail ?? "",
                                         shipping: element.shipping?.freeShipping ?? false,
                                         quantity: element.quantity ?? 0)}
                    self?.results = array
                    self?.presenter?.presentResults(with: array)
                } else {
                    // error case
                }
            case .empty:
                // error case
                break
            case .failure(_):
                // error case
                break
            }
        }
    }

}
