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
        configureSearchController()
    }

    func configureSearchController() {
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        search.obscuresBackgroundDuringPresentation = false
        search.searchBar.placeholder = "Ingresa tu búsqueda"
        navigationItem.searchController = search
    }

    func displayResults(with array: [ResultViewModel]) {
        
    }
}

extension DisplayResultsViewController: UISearchResultsUpdating {

    func updateSearchResults(for searchController: UISearchController) {
        guard let text = searchController.searchBar.text else { return }
            print(text)
    }
}
