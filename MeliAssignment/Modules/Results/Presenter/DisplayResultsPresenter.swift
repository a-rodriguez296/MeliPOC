//
//  DisplayResultsPresenter.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import Foundation

class DisplayResultsPresenter: DisplayResultsPresentationLogic {

    weak var viewController: DisplayResultsDisplayLogic?

    func presentResults(with array: [ResultDAO]) {
        let viewModelArray = array.map {
            return ResultViewModel(id: $0.id,
                                   title: $0.title,
                                   price: $0.price,
                                   thumbnail: $0.thumbnail)}
        viewController?.displayResults(with: viewModelArray)
    }

}
