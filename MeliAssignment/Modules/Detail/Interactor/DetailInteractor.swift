//
//  DetailInteractor.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import Foundation

class DetailInteractor: DetailBusinessLogic {
    var selectedItem: ResultDAO?
    var presenter: DetailPresentationLogic?

    func getSelectedItem() {
        if let selectedItem = selectedItem {
            presenter?.presentSelectedItem(item: selectedItem)
        }
    }
}
