//
//  DisplayResultsRouter.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import Foundation
import UIKit

class DisplayResultsRouter: DisplayResultsWireframeLogic {

    weak var viewController: UIViewController?

    static func assembleModule() -> UIViewController {
        let viewController: DisplayResultsViewController = UIStoryboard(name: "DisplayResults", bundle: nil).instantiateViewController()

        let interactor = DisplayResultsInteractor()
        let presenter = DisplayResultsPresenter()
        interactor.presenter = presenter
        presenter.viewController = viewController

        let router = DisplayResultsRouter()
        router.viewController = viewController
        viewController.router = router
        return viewController
    }
}
