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
        let viewController = DisplayResultsViewController()
        let router = DisplayResultsRouter()
        router.viewController = viewController
        return viewController
    }
}
