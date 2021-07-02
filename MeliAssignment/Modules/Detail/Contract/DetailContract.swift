//
//  DetailContract.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import Foundation

protocol DetailBusinessLogic: class {
    var selectedItem: ResultDAO? { get set }
    func getSelectedItem()
    func fetchImageData(with url: URL, completionHandler: @escaping (Data) -> Void)
}

protocol DetailPresentationLogic: class {
    func presentSelectedItem(item: ResultDAO)
}

protocol DetailDisplayLogic: class {
    func displaySelectedItem(item: DetailViewModel)
}

protocol DetialWireFrameLogic: class {}
