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
}

protocol DetailPresentationLogic: class {
    func presentSelectedItem(item: ResultDAO)
}

protocol DetialWireFrameLogic: class {}
