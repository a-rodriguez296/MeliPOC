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
    var dataStore: DisplayResultsDataStore?

    static func assembleModule() -> UIViewController {
        let viewController: DisplayResultsViewController = UIStoryboard(name: "DisplayResults", bundle: nil).instantiateViewController()

        let interactor = DisplayResultsInteractor()
        let presenter = DisplayResultsPresenter()
        interactor.presenter = presenter
        presenter.viewController = viewController

        let router = DisplayResultsRouter()
        router.dataStore = interactor
        router.viewController = viewController
        viewController.router = router
        viewController.interactor = interactor
        return viewController
    }

    func goToDetailView() {
        if let selectedItem = dataStore?.selectedResult,
           let navVC = viewController?.navigationController {
            let vc = DetailRouter.assembleModule(with: selectedItem)
            navVC.pushViewController(vc, animated: true)
        }
    }
}
