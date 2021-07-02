//
//  DetailRouter.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 1/07/21.
//

import Foundation
import UIKit

class DetailRouter: DetialWireFrameLogic {

    static func assembleModule(with selectedItem: ResultDAO) -> UIViewController {
        let viewController: DetailViewController = UIStoryboard(name: "Detail", bundle: nil).instantiateViewController()

        let interactor = DetailInteractor()
        interactor.selectedItem = selectedItem
        viewController.interactor = interactor

        let router = DetailRouter()
        return viewController
    }
}
