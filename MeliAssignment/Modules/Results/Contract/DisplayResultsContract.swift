//
//  DisplayResultsContract.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import Foundation

protocol DisplayResultsBusinessLogic: class {
    func fetchResults(with keyword: String)
}

protocol DisplayResultsPresentationLogic: class {
    func presentResults(with array: [ResultDAO])
}

protocol DisplayResultsDisplayLogic: class {
    
}

protocol DisplayResultsWireframeLogic: class {}
