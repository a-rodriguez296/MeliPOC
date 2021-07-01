//
//  DisplayResultsViewController.swift
//  MeliAssignment
//
//  Created by Alejandro Rodríguez on 29/06/21.
//

import UIKit

class DisplayResultsViewController: UIViewController, DisplayResultsDisplayLogic {

    var interactor: DisplayResultsBusinessLogic?
    weak var router: DisplayResultsWireframeLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.fetchResults(with: "macbook pro")
    }

    func displayResults(with array: [ResultViewModel]) {
        
    }
}
