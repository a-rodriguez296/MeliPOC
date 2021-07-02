//
//  DisplayResultsContract.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import Foundation

protocol DisplayResultsBusinessLogic: class {
    func fetchResults(with keyword: String)
    func selectedResult(with id: String)
}

protocol DisplayResultsPresentationLogic: class {
    func presentResults(with array: [ResultDAO])
    func presentError()
}

protocol DisplayResultsDisplayLogic: class {
    func displayResults(with array: [ResultViewModel])
    func displayError(with message: String)
}

protocol DisplayResultsDataStore {
    var selectedResult: ResultDAO? { get set }
}


protocol DisplayResultsWireframeLogic: class {
    func goToDetailView()
}
